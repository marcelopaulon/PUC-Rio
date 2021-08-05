local mqtt = require("mqtt_library")
local json = require("json")
local lru = require("lru")
suit = require 'suit'

-- CONFIGS:

local debug = false
local fast = false

local AGENT_TTL = 8
local QUERY_TTL = 8

-- STATE:

local nodeIdx
local maxNodesPerRow

local row
local column

local topicName

local neighbors = {}

local highlight = false

local messageIdCounter = 0

local heartbeatTimeout = -1

local events = {}

local enableButtonsTimeout = nil

local logBuffer = {
  'Rumor Routing Simulator',
  'Author: Marcelo Paulon',
  'June 2021',
  '...',
  'Press L (or l) to log all nodes state (recursive broadcast)',
  'Press D (or d) to clear all logs (recursive broadcast)',
  'Press H (or h) to temporarily highlight neighbors',
  'Press Q (or q) to exit all nodes (recursive broadcast)',
}

-- FUNCTIONS:

function log(message, uiOnly)
  if (uiOnly == nil or uiOnly == false) then
    -- print to stdout
    print(tostring(os.time()) .. ' r' .. tostring(row) .. ' c' .. tostring(column) .. ': ' .. message)
  end

  if (#logBuffer == 10) then
    table.remove(logBuffer,1)
  end

  if (#message > 70) then
    local i = 0
    
    while (i < 5 and #message > 0) do
      local tmpBuf = ''
      tmpBuf = string.sub(message, 0, 65)

      if i == 4 then
        tmpBuf = tmpBuf .. '...'
      end

      log(tmpBuf, true)

      message = string.sub(message, #tmpBuf+1)
      i = i + 1
    end
  else
    table.insert(logBuffer, message)
  end
end

function getTopicName(r, c)
  return 'node-r' .. tostring(r) .. '-c' .. tostring(c)
end

function setHighlight()
  highlight = true
  highlightTimeout = os.time() + 2
  
  if (debug) then
    log("Highlight triggered")
  end
end

local publishQueue = {}

function publish(event, data)
  messageIdCounter = messageIdCounter + 1

  if (data.id == nil) then
     -- Assign id if empty (otherwise, it's a message being relayed)
    data.id = tostring(nodeIdx) .. '-' .. tostring(messageIdCounter)
  end

  if (data.ttl == nil) then
    data.ttl = 10 -- default ttl
  else
    data.ttl = data.ttl - 1
    if data.ttl < 0 then
      log('Stopping transmission of "' .. event .. '" event (ttl<0)')
      return
    end
  end

  local e = {topicName=topicName}

  if (data.onPublish ~= nil and type(data.onPublish) == "function") then
    e.onPublish = data.onPublish
    data.onPublish = nil
  end

  e.payload = json.encode({event=event, data=data})

  table.insert(publishQueue, e)
end

local mqttPolledMsgs = {}

local recentlySeenMessageIds = lru.new(1000) -- lru cache to keep last 1000 message ids

function mqttcb(topic, message)
  table.insert(mqttPolledMsgs, {topic=topic, message=message}) -- send to processing queue
end

function love.keypressed(key)
    if (debug) then
      print("pressionou tecla! " .. tostring(key))
    end

    publish("controle", {key=key})
end

function love.load()
  nodeIdx = tonumber(arg[2]) -- zero-based indexing
  maxNodesPerRow = tonumber(arg[3]) -- max number of nodes per row 

  row = math.floor(nodeIdx / maxNodesPerRow) -- zero-based indexing
  column = nodeIdx % maxNodesPerRow -- zero-based indexing

  math.randomseed(os.time() - (nodeIdx * 1000))

  topicName = getTopicName(row,column)

  love.window.setMode(450, 210, {resizable=false, x=column*450, y=80+row*238})

  local nodeIdStr = 'Node ' .. arg[2] .. ' - row ' .. tostring(row) .. ' column ' .. tostring(column)
  log(nodeIdStr)
  love.window.setTitle(nodeIdStr)

  mqtt_client = mqtt.client.create("localhost", 1883, mqttcb)
  mqtt_client:connect(nodeIdStr)

  local possibleNeighbors = {}
  
  if (row-1 >= 0) then
    table.insert(possibleNeighbors, getTopicName(row-1, column))
    table.insert(possibleNeighbors, getTopicName(row-1, column+1))
  end

  if (column-1 >= 0) then
    table.insert(possibleNeighbors, getTopicName(row, column-1))
    table.insert(possibleNeighbors, getTopicName(row+1, column-1))
  end

  if (row-1 >= 0 and column-1 >= 0) then
    table.insert(possibleNeighbors, getTopicName(row-1, column-1))
  end

  table.insert(possibleNeighbors, getTopicName(row+1, column))
  table.insert(possibleNeighbors, getTopicName(row, column+1))
  table.insert(possibleNeighbors, getTopicName(row+1, column+1))
  
  mqtt_client:subscribe(possibleNeighbors)

  log('Connected to MQTT broker.')
  log('Waiting 5 seconds before enabling the UI...', true)

  enableButtonsTimeout = os.time() + 5 -- wait 5 seconds until enabling buttons (so there's time for some heartbeats to arrive)
end

local showMessage = false
function love.draw()
  if (highlight) then
    love.graphics.setBackgroundColor( 255, 255, 0 )
    love.graphics.setColor(0, 0, 0, 1)
  else
    love.graphics.setBackgroundColor( 0, 0, 0 )
    love.graphics.setColor(1, 1, 1, 1)
  end

  love.graphics.rectangle("line", 10, 50, 430, 150)

  
  for i,line in ipairs(logBuffer) do
    love.graphics.print(line, 12, 52 + (14*(i-1)), 0)
  end
  
  suit.draw()
end

function setToList(setT)
  if (setT == nil) then
    return {}
  end

  local keyList = {}
  for k in pairs(setT) do
    table.insert(keyList, k)
  end
  return keyList
end

function listToSet(listT)
  if (listT == nil) then
    return {}
  end

  local setT = {}
  for _,k in ipairs(listT) do
    setT[k] = true
  end
  return setT
end

function pickDestination(avoidList)
  local possibleDestinations = {}

  if (avoidList ~= nil and #avoidList > 0) then
    local avoidSet = listToSet(avoidList)

    -- try to avoid picking visited nodes as destination
    for k in pairs(neighbors) do
      if (avoidSet[k] == nil) then
        table.insert(possibleDestinations, k)
      end
    end
  end

  if (#possibleDestinations == 0) then
    -- use all neighbors if no unvisited neighbors are available
    possibleDestinations = setToList(neighbors)
  end

  -- random neighbor
  return possibleDestinations[math.random(#possibleDestinations)]
end

function processAgent(agentData, source, overheard)
  local fromTxt = source

  if source == topicName then
    fromTxt = 'self'
  end

  log("Processing agent from " .. fromTxt .. ' overheard=' .. tostring(overheard) .. ': ')
  log(json.encode(agentData))

  local isVisited = false
  for _,id in ipairs(agentData.visited) do
    if id == topicName then
      isVisited = true
      break
    end
  end

  if isVisited == false then
    table.insert(agentData.visited, topicName)
  end

  agentData.numHops = agentData.numHops + 1

  -- update the node's events table based on the agent's
  for k,e in pairs(agentData.events) do 
    e.distance = e.distance + 1 -- mp: increase agent distance

    -- if (NODE.EVENTS does not contain E) OR (NODE.EVENTS[E].NUMHOPS > AGENT.EVENTS[E]) -- ?
    if (events[k] == nil or events[k].distance < 0 or events[k].distance > e.distance) then
      if (events[k] == nil) then
        events[k] = {}
      end

      -- NODE.EVENTS[E].DISTANCE <- AGENT.NUMHOPS - AGENT.EVENTS[E].VISIT_TIME --- mp: didn't understand what's the purpose of that subtraction; I'll just set the distance to be the agent's recorded distance+1..
      events[k].distance = e.distance
      
      -- AGENT.EVENTS[E].DIRECTION <- SOURCE -- ?
      -- mp: set direction locally, to be where the agent came from (source)
      events[k].direction = source
    end
  end

  -- update the agent's events table based on the node's
  -- foreach event named E in NODE.EVENTS
  for k,e in pairs(events) do
    if (agentData.events[k] == nil) then
      agentData.events[k] = {}
      agentData.events[k].distance = e.distance + 1
      agentData.events[k].direction = topicName
    elseif (agentData.events[k].distance > e.distance) then -- mp: adopt the best route from the current node    
      agentData.events[k].distance = e.distance + 1
      agentData.events[k].direction = topicName -- agent next direction = self
    end

    -- AGENT.EVENTS[E].VISIT_TIME <- (- NODE.EVENTS[E].DISTANCE) --- mp: ??
    --if e.distance ~= nil then
    --  agentData.events[k].visitTime = - e.distance
    --end

  end

  --if AGENT.NUMHOPS < AGENT_TTL
  if agentData.numHops < AGENT_TTL then
    --DESTINATION <- pick neighbor based on agent forwarding policy 
    local destination = pickDestination(agentData.visited)
    if destination == nil then
      log("Failed to process agent! Unable to retrieve neighbor")
      return
    end

    if overheard ~= true then
      --forwardAgent(AGENT,DESTINATION) if it isn't an overheard message
      publish("agent", {to=destination, agentData=agentData})
    end
  end
end

function handleValidQuery(queryData, source)
  log("VALID QUERY for EVENT " .. queryData.q .. "!!!!!")
  publish("query-response", {finalNode=topicName, event=queryData.q, track=queryData.visited, visited={}, idx=#queryData.visited, to=source})
end

function processQuery(queryData, source)
  --QUERY.TTL <- QUERY.TTL - 1
  if (queryData.ttl == nil) then
    queryData.ttl = QUERY_TTL -- default query ttl
  end

  queryData.ttl = queryData.ttl - 1

  if (queryData.visited == nil) then
    queryData.visited = {}
    table.insert(queryData.visited, source)
    table.insert(queryData.visited, topicName)
  else
    local isVisited = false
    for _,id in ipairs(queryData.visited) do
      if id == topicName then
        isVisited = true
        break
      end
    end

    if isVisited == false then
      table.insert(queryData.visited, topicName)
    end
  end

  --if NODE.EVENTS[QUERY.EVENT_NAME].DISTANCE=0
  if events[queryData.q] ~= nil and events[queryData.q].distance == 0 then
    --the query reached a valid destination
    handleValidQuery(queryData, source)
    return
  --else if NODE.EVENTS[QUERY.EVENT_NAME].DISTANCE > 0
  elseif events[queryData.q] ~= nil and events[queryData.q].distance > 0 then
    --the node has a path to the event 
    --forwardQuery(QUERY,NODE.EVENTS[QUERY.EVENT_NAME].DIRECTION)
    log('Sending query (ttl=' .. tostring(queryData.ttl) .. ') to ' .. tostring(events[queryData.q].direction))
    publish("query", {to=events[queryData.q].direction, queryData=queryData, ttl=queryData.ttl+1})
  else
    --DESTINATION <- pick neighbor based on query forwarding policy
    local destination = pickDestination(queryData.visited)
    if destination == nil then
      log("Failed to process query! Unable to retrieve neighbor")
      return
    end

    --forwardQuery(QUERY,DESTINATION)
    -- add 1 to the ttl since publish decrements it (and we already decremented it)
    log('Sending query (ttl=' .. tostring(queryData.ttl) .. ') to ' .. destination)
    publish("query", {to=destination, queryData=queryData, ttl=queryData.ttl+1})
  end
end

function processQueryResponse(data)
  -- publish("query-response", {finalNode=topicName, event=queryData.q, track=queryData.visited, visited={}, idx=#queryData.visited, to=source})
  if (data.track[1] == topicName) then
    log('Query response received for event ' .. data.event .. ' from ' .. data.finalNode)
    return
  end

  local isVisited = false
  for _,id in ipairs(data.visited) do
    if id == topicName then
      isVisited = true
      break
    end
  end

  if isVisited == false then
    table.insert(data.visited, topicName)
  end

  local bestIdx = data.idx
  for i,v in ipairs(data.track) do
    if i > bestIdx then -- not worth it to choose a worse index (closer to the event location) on purpose 
      break
    end

    if neighbors[v] == true then
      bestIdx = i
      break -- we want the min index (closest to the original querier), so we can stop at the first match
    end
  end

  if bestIdx == data.idx then -- no progress achieved, so let's try to send the message to a random neighbor, avoiding already visited nodes, and leaving idx intact
    local destination = pickDestination(data.visited)
    if destination == nil then
      log("Failed to process query-response! Unable to retrieve neighbor")
      return
    end
    data.to = destination
  else
    data.idx = bestIdx
    data.to = data.track[bestIdx]
  end

  data.id = nil -- unset message id (so that the message doesn't get lost in case we have to revisit a node)
  publish("query-response", data)
end

function processMessage(payload, topic)
  if payload.event == "heartbeat" then
    if neighbors[topic] == nil then
      neighbors[topic] = true

      if debug == true then
        log('Added ' .. topic .. ' as neighbor')
      end
    end
  elseif payload.event == "agent" then
    if (payload.data.to == topicName) then
      log("agent: " .. json.encode(payload))
      processAgent(payload.data.agentData, topic, false)
    else
      if (debug == true) then
        log("Overheard an agent - " .. json.encode(payload))
      end
      processAgent(payload.data.agentData, topic, true)
    end
  elseif payload.event == "query" then
    if (payload.data.to == topicName) then
      log("query: " .. json.encode(payload))
      processQuery(payload.data.queryData, topic)
    --elseif (debug == true) then
      --log("Overheard a query - " .. json.encode(payload))
    end
  elseif payload.event == "query-response" then
    if (payload.data.to == topicName) then
      log("response-query: " .. json.encode(payload))
      processQueryResponse(payload.data)
    end
  elseif payload.event == "controle" then
    if payload.data.key == "l" then 
      publish(payload.event, payload.data) -- recursive broadcast
      log("STATE: " .. json.encode(events))
    elseif payload.data.key == "d" then 
      publish(payload.event, payload.data) -- recursive broadcast
      logBuffer = {}
    elseif payload.data.key == "h" then 
      setHighlight() 
    elseif payload.data.key == "n" then 
      log('Neighbors: ' .. json.encode(setToList(neighbors)))
    elseif payload.data.key == "q" then
      payload.data.onPublish = function()
        log('Shutting down (Q pressed)')
        os.exit(0)
      end

      publish(payload.event, payload.data) -- recursive broadcast
    end
  end
end

function processMessageQueue()
  if #mqttPolledMsgs > 0 then
    local nextMqttPolledMsgs = {}
    for i,data in ipairs(mqttPolledMsgs) do
      if (i <= 5) then -- only process up to 5 messages
        local topic = data.topic
        local message = data.message
        local payload = json.decode(message)
        
        if (recentlySeenMessageIds:get(payload.data.id) == nil) then -- only process the message if not recently processed
          recentlySeenMessageIds:set(payload.data.id, true) -- add to lru cache

          if (debug and payload.event ~= "heartbeat") then
            log("Received from topic " .. topic .. ": " .. message)
          elseif (payload.event ~= "controle" and payload.event ~= "heartbeat") then
            if (debug == true) then
              log("t:" .. topic .. " m: " .. message)
            end
          end

          processMessage(payload, topic)
        else
          if (debug == true) then
            log("Skipping recently seen message " .. payload.data.id)
          end
        end
      else 
        table.insert(nextMqttPolledMsgs, data) -- leave i>5 messages to the next love.update call
      end
    end

    mqttPolledMsgs = nextMqttPolledMsgs
  end
end

local lastProcessedPublishQueue = -1

function love.update(dt)
  mqtt_client:handler()

  if (fast == true or lastProcessedPublishQueue < 0 or os.time() - lastProcessedPublishQueue >= 1) then
    for _,v in ipairs(publishQueue) do
      mqtt_client:publish(v.topicName, v.payload)
      
      if v.onPublish ~= nil then
        pcall(v.onPublish)
      end
    end
    lastProcessedPublishQueue = os.time()
    publishQueue = {}
  end

  local destination = pickDestination()

  if (enableButtonsTimeout == nil or os.time() > enableButtonsTimeout) then
    if (enableButtonsTimeout ~= nil) then
      enableButtonsTimeout = nil
      log('Ready.', true)
    end

    if suit.Button("Evento 1", 10,10, 100,30).hit then
      log("Sending event 1")

      if destination == nil then
        log("Warning! Unable to retrieve neighbor")
      end

      events['1'] = {distance=0}
      newAgent = {events={}, numHops=0, visited={}}
      processAgent(newAgent, topicName, false)
    end

    if suit.Button("Evento 2", 120,10, 100,30).hit then
      log("Sending event 2")

      if destination == nil then
        log("Warning! Unable to retrieve neighbor")
      end

      events['2'] = {distance=0}
      newAgent = {events={}, numHops=0, visited={}}
      processAgent(newAgent, topicName, false)
    end

    if suit.Button("Consulta 1", 230,10, 100,30).hit then
      log("Sending query 1")

      if destination == nil then
        log("Warning! Unable to retrieve neighbor")
      end

      publish("query", {queryData={q='1'},to=destination})
    end

    if suit.Button("Consulta 2", 340,10, 100,30).hit then
      log("Sending query 2")

      if destination == nil then
        log("Warning! Unable to retrieve neighbor")
      end

      publish("query", {queryData={q='2'},to=destination})
    end
  end

  if highlight == true and os.time() >= highlightTimeout then
    highlight = false
  end

  if heartbeatTimeout < 0 then
    heartbeatTimeout = os.time() + 3
  end

  if os.time() > heartbeatTimeout then
    heartbeatTimeout = os.time() + 3
    publish("heartbeat", {})
  end

  processMessageQueue()
end


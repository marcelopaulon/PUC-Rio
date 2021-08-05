local lrpc = require "luarpc"
local json = require("json")

local debug = false

require("util")

local f = assert(io.open("ports.txt", "r"))
local t = f:read("*all")
f:close()
 
local networkPorts = {}
for token in string.gmatch(t, '([^,]+)') do
    table.insert(networkPorts, tonumber(token))
 end

local majorityMinimum = math.ceil((#networkPorts + 1) / 2)

local currentTerm = 0

local initialized = false
local stopped = true
local votedFor = nil

local votes = 0

local state = "candidate"
local timers = {}

local speedFactor = 60.0

local portIdx = tonumber(arg[1])
local port = networkPorts[portIdx]

math.randomseed(os.time() - (portIdx * 10))

local oldprint = print
print = function(...)
    local arg = {...}
    arg[1] = tostring(os.time()) .. ' ' .. tostring(port) .. '(' .. state .. '): ' .. arg[1]
    oldprint(table.unpack(arg))
end

 print("Server initialized (majority minimum=" .. tostring(majorityMinimum) .. ")- ports: " .. t)


local others = {}
for _,v in ipairs(networkPorts) do
    if (v ~= port) then
        others[v] = lrpc.createProxy("localhost", v, "interface.idl", false) -- verbose/debug = false for internal calls
    end
end

local taskQueue = {}

local encode = function(data)
    return json.encode(data)
end

local decode = function(data)
    return json.decode(data)
end

local randomInt = function(from, to)
    return math.random(from, to)
end

local setElectionTimeout = function()
    if (state ~= "candidate" and state ~= "follower") then
        print("[FATAL] Tried to set an election timeout in a " .. state .. " state")
        os.exit(-1)
    end

    local waitInSeconds = math.floor(math.random(80, 300) * speedFactor / 1000) -- start an election within 150-300ms
    timers.electionTimeout = os.time() + waitInSeconds

    if (debug == true or state == "candidate") then
        print("[" .. state:upper() .. "] Starting a new election in " .. tostring(waitInSeconds) .. " seconds...")
    end
end

local startElection = function()
    state = "candidate"
    print("CANDIDATE")

    -- Candidates (§5.2):
    votes = 0

    currentTerm = currentTerm + 1 -- Increment currentTerm
    votedFor = port -- Vote for self
   
    -- Reset election timer
    setElectionTimeout()

    -- Send RequestVote RPCs to all other servers
    for k,v in pairs(others) do
        -- print("Sending request to " .. tostring(k))
        local request = {}
        request.term = currentTerm
        request.candidateId = port
        local voteRequestAckStr = v.RequestVote(encode(request))
        if decode(voteRequestAckStr).status ~= "received" then
            print("[WARNING] Unknown RequestVote ack: " .. voteRequestAckStr)
        end
    end

    
    -- If AppendEntries RPC received from new leader: convert to follower
    -- If election timeout elapses: start new election

    print("Election started")
end

local convertToFollower = function()
    votedFor = nil
    votes = 0
    state = "follower"
    print("I'm now a FOLLOWER")
    setElectionTimeout()
end

local setLeaderHeartbeatTimeout = function()
    if (state ~= "leader") then
        print("[FATAL] Tried setting a leader heartbeat timeout when state ~= leader")
        os.exit(-1)
    end

    local waitInSeconds = math.floor(math.random(20, 40) * speedFactor / 1000) -- send heartbeats within 20-40ms
    timers.leaderHeartbeatTimeout = os.time() + waitInSeconds

    if (debug == true) then
        print("[LEADER] Scheduled heartbeats to " .. tostring(waitInSeconds) .. " seconds from now")
    end
end

local processTimers = function()
    if ((state == "candidate" or state == "follower") and os.time() > timers.electionTimeout) then
        print("[" .. state:upper() .. "] Election timer")
        startElection()
    end

    if (state == "leader" and os.time() > timers.leaderHeartbeatTimeout) then
        print("[LEADER - " .. tostring(port) .. "] Sending heartbeats.. term = " .. tostring(currentTerm))
            
        local req = {}
        req.term = currentTerm
        req.leaderId = port
        
        local reqStr = encode(req)

        for k,v in pairs(others) do
            v.AppendEntries(reqStr)
        end

        setLeaderHeartbeatTimeout()
    end
end

local processAppendEntries = function(data)

    if (debug == true) then
        print("processAppendEntries!!!! " .. encode(data))
    end

    local response = {}

    if (data.term < currentTerm) then
        response.success = false
    elseif (data.term > currentTerm) then
        print("[" .. state .. "] Received an append entries that has a greater term. Converting to follower...")
        currentTerm = data.term
        convertToFollower() -- this will set the election timeout again
        response.success = true
    else -- data.term == currentTerm
        response.success = true

        if state == "candidate" then
            convertToFollower()  -- this will set the election timeout again
        else 
            setElectionTimeout() -- heartbeat should set the election timeout
        end
    end

    response.term = currentTerm
    others[data.leaderId].ReplyRequestVote(json.encode(response))

    if (response.success == true) then
        print("Appended entries from leader " .. tostring(data.leaderId) .. " on term " .. currentTerm)
    end
end

local processReplyAppendEntries = function(data)
    if (debug == true) then
        print("processReplyAppendEntries!!!!" .. encode(data))
    end

    if (data.term < currentTerm) then
        if (debug == true) then
            print("ignoring reply append entries from older term!!!! ")
        end

        return
    end

    if (data.term > currentTerm) then
        print("[" .. state .. "] Received a reply append entries that has a greater term. Converting to follower...")
        currentTerm = data.term
        convertToFollower()
    end
end

local processRequestVote = function(request) 
    if (debug == true) then
        print("processRequestVote!!!!")
    end

    local response = {}
    response.voteGranted = false
    
    if (request.term < currentTerm) then
        response.term = currentTerm
    elseif (request.term > currentTerm) then
        print("[" .. state .. "] Received a request vote that has a greater term. Converting to follower...")
        currentTerm = request.term
        response.term = currentTerm
        convertToFollower()
    else
        response.term = currentTerm
    end

    if (votedFor == nil or votedFor == request.candidateId) then
        response.voteGranted = true
        votedFor = request.candidateId
    end

    others[request.candidateId].ReplyRequestVote(json.encode(response))
end

-- candidate receives a reply from the vote request
local processReplyRequestVote = function(voteReply)
    if (debug == true) then
        print("processReplyRequestVote!!!! " .. encode(voteReply))
    end

    if (voteReply.term < currentTerm) then
        if (debug == true) then
            print("ignoring reply request vote from older term!!!! ")
        end

        return
    end

    if (state ~= "candidate") then
        if (debug == true) then
            print("[" .. state .. "] Received a reply request vote for the current term but the node is not a candidate")
        end

        return
    end

    if (debug == true) then
        print("Processing reply RequestVote")
    end
    
    if (voteReply.term > currentTerm) then
        currentTerm = voteReply.term
        convertToFollower()
        return
    elseif (voteReply.voteGranted == true) then
        votes = votes + 1
        print("[POLLS - CANDIDATE] We now have " .. tostring(votes) .. " votes")
    end

    -- If votes received from majority of servers: become leader
    if (votes >= majorityMinimum) then
        state = "leader"
        print("I'm now a LEADER (term=" .. tostring(currentTerm) .. ")")
        setLeaderHeartbeatTimeout()
    end
end

local loop = function()
    if speedFactor < 60.0 then
        print("[ERROR] Speed factor cannot be less than 60.0")
        return
    end

    setElectionTimeout()

    while true do
        if (stopped == false) then
            processTimers()
        end

        if (#taskQueue > 0) then
            toProcess = taskQueue
            taskQueue = {}

            if (debug == true) then
                print("Processing " .. tostring(#toProcess) .. " enqueued tasks")
            end

            if (stopped == false) then
                for _,task in ipairs(toProcess) do
                    if (task.type == "AppendEntries") then
                        processAppendEntries(task.data)
                    elseif (task.type == "ReplyAppendEntries") then
                        processReplyAppendEntries(task.data)
                    elseif (task.type == "RequestVote") then
                        processRequestVote(task.data)
                    elseif (task.type == "ReplyRequestVote") then
                        processReplyRequestVote(task.data)
                    else
                        print("[FATAL] Unknown task " .. task.type)
                        os.exit(-1)
                    end
                end
            else
                print("[STOPPED NODE] Skipped " .. tostring(#toProcess) .. " enqueued tasks")
            end
        end
        lrpc.wait(1, debug) -- wait for 1 second then check the queue for tasks, verboseMode = debug
    end
end

impl = {
    AppendEntries = (function(requestStr)
        if (debug == true) then
            print("AppendEntries received: " .. requestStr)
        end

        local request = decode(requestStr)
        table.insert(taskQueue, {type="AppendEntries", data=request})

        local response = {status="received"}
        return encode(response)
    end),
    ReplyAppendEntries = (function(requestStr)
        if (debug == true) then
            print("Append Entries Reply Received: " .. requestStr)
        end

        local request = decode(requestStr)
        table.insert(taskQueue, {type="ReplyAppendEntries", data=request})

        local response = {status="received"}
        return encode(response)
    end),
    RequestVote = (function(requestStr) 
        if (debug == true) then
            print("RequestVote received: " .. requestStr)
        end

        local request = decode(requestStr)
        table.insert(taskQueue, {type="RequestVote", data=request})

        local response = {status="received"}
        return encode(response)
    end),
    ReplyRequestVote = (function(requestStr) 
        if (debug == true) then
            print("RequestVote Reply received: " .. requestStr)
        end

        local request = decode(requestStr)
        table.insert(taskQueue, {type="ReplyRequestVote", data=request})

        local response = {status="received"}
        return encode(response)
    end),
    InitializeNode = (function() 
        if initialized == true then
            print("[FAILED] Node already initialized")
            return
        end

        print("Initializing node (port " .. tostring(port) .. ")...")

        initialized = true
        print("Node initialized.")

        stopped = false
        loop()
    end),
    ResumeNode = (function()
        if (stopped == false) then
            print("[ERROR] Node was already running")
            return
        end

        print("Resuming node...")
        stopped = false
        print("Node resumed")
    end),
    StopNode = (function() 
        if (stopped == true) then
            print("[ERROR] Node was already stopped")
            return
        end

        print("Stopping node...")
        stopped = true
        print("Node stopped")
    end),
    Debug = (function()
        if (initialized == false) then
            print("[ERROR] Cannot debug uninitialized node")
            return
        end

        if debug == false then
            print("Enabling debug mode...")
            debug = true
        end

        print("DEBUG! port " .. tostring(port) .. " / state=" .. state)
        if (state == "leader") then
            print("timers.leaderHeartbeatTimeout - os.time(): " .. tostring(timers.leaderHeartbeatTimeout - os.time()))
        elseif (state == "candidate") then
            print("timers.electionTimeout - os.time(): " .. tostring(timers.electionTimeout - os.time()))
            print("votes: " .. tostring(votes))
        elseif (state == "follower") then
            print("timers.electionTimeout - os.time(): " .. tostring(timers.electionTimeout - os.time()))
            print("voted for: " .. tostring(votedFor))
        end
    end)
}

lrpc.createServant(impl, "interface.idl", port)
lrpc.waitIncoming(debug) -- true: verbose


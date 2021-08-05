local socket = require("socket")
local json = require("json")

local luarpcIdl = require "luarpcIdl"
local primitiveTypes = luarpcIdl.primitiveTypes

local me = {}

local sockets = {}
local serverSet = {}

local impls = {}
local interfaces = {}

local debug = false

local errorJson = function(err)
    return json.encode({type = "ERROR", error = err})
end

function me.registerServant(idl, impl)
    if (idl == nil or idl.name == nil) then
        print ("[FATAL] Invalid interface provided when registering servant")
        os.exit(-1)
    end

    -- create a TCP socket and bind it to the local host, at any port
    local server = assert(socket.bind("*", 0))
    sockets[#sockets+1] = server
    serverSet[server] = true

    -- find out which port the OS chose for us
    local ip, port = server:getsockname()
    impls[port] = impl
    interfaces[port] = idl
    print("Registered interface '" .. idl.name .. "' servant on ip " .. ip .. " and port " .. port)

    return ip, port
end

local call = function(line, ip, port)
    local client = assert(socket.connect(ip, port))

    if debug then
        print("Connected to RPC server!")
    end

    client:send(line .. "\n")
    local lineR, err = client:receive('*a')

    if not err then
        if debug then
            print("Received: " .. lineR) 
        end

        client:close()
        return lineR
    else
        return errorJson("Client error: " .. err)
    end
end

local validateStruct

local validateType = function(expectedType, value, internalStructs, allowNullValues)
    if value == nil then
        if not allowNullValues then
            return "value cannot be null (expected non-null " .. expectedType .. " value)"
        else
            return nil -- allow null values
        end
    end

    local primitive = primitiveTypes[expectedType]
    local typeStr = type(value)
    if typeStr == "number" then
        if math.floor(value) == value and expectedType == "int" then
            typeStr = "int"
        else
            typeStr = "double"
        end
    end

    if typeStr == "string" and expectedType == "char" then
        if string.len(value) <= 1 then
            typeStr = "char"
        end
    end

    if (primitive and typeStr ~= expectedType) or (not primitive and typeStr ~= "table") then
        return "expected type " .. expectedType .. " - actual=" .. typeStr
    end

    if not primitive then 
        err = validateStruct(expectedType, value, internalStructs)
        if err then
            return err
        end
    end
end

validateStruct = function(structName, data, usedStructs)
    if not usedStructs[structName] then
        return "unknown type '" .. structName .. "'"
    end

    local struct = usedStructs[structName]
    for i, v in ipairs(struct.fields) do
        typeValidationError = validateType(v.type, data[v.name], struct.structs, true)
        if (typeValidationError) then
            return "struct " .. structName .. ": " .. typeValidationError
        end
    end

    return nil -- "valid struct"
end

local processParams = function(idlParams, params, idl)
    local idlParamsIn = {}

    for i, varg in ipairs(idlParams) do
        if varg.direction ~= "out" then
            idlParamsIn[#idlParamsIn+1] = varg.type
        end
    end

    if #idlParamsIn ~= #params then
        return nil, "expected " .. #idlParamsIn .. " parameters - actual=" .. #params
    end

    for i, idlParamType in ipairs(idlParamsIn) do
        local typeValidationError = validateType(idlParamType, params[i], idl.structs)

        if (typeValidationError) then
            return nil, "argument error (pos=" .. i .. "): " .. typeValidationError
        end

        if debug then
            print("Validated arg pos=" .. i .. ": valid " .. idlParamType)
        end
    end

    return params, nil

end

local validateResponseData = function(result, methodIdl)
    resulttype = methodIdl.resulttype
    outTypes = {}

    if resulttype ~= "void" then
        outTypes[#outTypes+1] = resulttype
    end

    for i, v in ipairs(methodIdl.args) do
        if v.direction == "out" then
            outTypes[#outTypes+1] = v.type
        end
    end

    if (result == nil and #outTypes > 0) or (#outTypes ~= #result) then 
        local actual = 0
        if result ~= nil then
            actual = #result
        end
        return "wrong number of response params - expected " .. #outTypes .. " - actual " .. actual
    end

    for i, expectedType in ipairs(outTypes) do 
        local typeValidationError = validateType(expectedType, result[i], methodIdl.structs)

        if (typeValidationError) then
            return nil, "response argument error (pos=" .. i .. "): " .. typeValidationError
        end
    end
end

function me.createProxy(idl, ip, port)
    local methods = {}

    for methodName, v in pairs(idl.methods) do
        methods[methodName] = function(self, ...)
            local data = {type = "REQUEST", method = methodName}

            local paramList, err = processParams(v.args, {...}, idl)
            
            if paramList ~= nil then
                data.params = paramList
            elseif err then
                return "Client error: " .. err
            end

            line = json.encode(data)
            lineR = call(line, ip, port)
            dataR = json.decode(lineR)

            if dataR.error then
                return dataR.error
            end

            errR = validateResponseData(dataR.result, v)

            if errR then
                return errR
            else
                return nil, table.unpack(dataR.result)
            end
        end
    end

    local mt = {}

    mt.__tostring = function() 
        return 'LRPC Client Stub for ' .. idl.name .. ' idl.'
    end

    mt.__index = function (t,k)
        if not methods[k] then
            return function() 
                return 'Method ' .. k .. ' is undefined'
            end
        end
        return methods[k]
     end
    
    mt.__newindex = function (t,k,v)
        --methods[k] = v
        print('Error - table cannot be changed.')
    end

    local t = {}
    setmetatable(t, mt)

    return t
end

local processJsonRequest = function(line, impl, idl)
    data = json.decode(line)

    if data.method == nil then
        return errorJson("Server error: " .. "null method")
    end

    if impl[data.method] == nil then
        return errorJson("Server error: " .. "method '" .. data.method .. "' not found")
    end

    local resultParams
    if data.params ~= nil then
        params, err = processParams(idl.methods[data.method].args, data.params, idl)

        if err then
            return errorJson("Server error: " .. err)
        end

        resultParams = {pcall(impl[data.method],table.unpack(params))}
    else
        resultParams = {pcall(impl[data.method])}
    end

    local errR
    if resultParams[1] == true then
        table.remove(resultParams, 1)
        errR = validateResponseData(resultParams, idl.methods[data.method])
    else 
        errR = "impl exception - " .. resultParams[2]
    end

    if errR then
        return errorJson("Server error: " .. "invalid internal response - " .. errR)
    end

    if debug then
        print("[Server] Processed RPC call for method " .. data.method .. "!")
    end

    return json.encode({type = "RESPONSE", method = data.method, result = resultParams})
end

function me.waitIncoming()
    if #sockets == 0 then
        print("[FATAL] No servants were registered")
        os.exit(-1)
    end
    
    -- loop forever waiting for clients
    while 1 do
        -- Process connections
        local readyRead = socket.select(sockets, nil, 1)
        for _,socket in ipairs(readyRead) do
            if serverSet[socket] then -- Server socket
                -- client connected
                local client = socket:accept()
                client:settimeout(5); client:setoption('tcp-nodelay', true)
                sockets[#sockets+1] = client
            else -- Client socket
                client = socket

                if debug then
                    print(tostring(client))
                end

                -- receive the line
                local line, err = client:receive()

                if err then
                    print("Error: " .. err)
                    client:send(errorJson(err))
                else 
                    local ip, port = socket:getsockname()

                    if debug then
                        print("Will process request for " .. ip .. ":" .. port)
                    end

                    if impls[port] == nil then
                        print("[FATAL] Unknown impl for " .. ip .. ":" .. port)
                        os.exit(-1)
                    end

                    -- if there was no error, send it back to the client
                    client:send(processJsonRequest(line, impls[port], interfaces[port]))
                end

                -- done with client, close the object
                client:close()
            end
        end
    end
end

return me
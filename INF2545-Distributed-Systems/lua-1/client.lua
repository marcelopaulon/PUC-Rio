print("Port: ")
port = io.read("*n") -- read a number
io.read()

if (port <= 0 or port > 65535) then
    print("Invalid port " .. port)
    return
end

-- load namespace
local socket = require("socket")

local client = assert(socket.connect("localhost", port))

print("Connected! Phrase to be echoed: ")

line = io.read("*l")

client:send(line .. "\n")
local lineR, err = client:receive('*a')

if not err then
    print("Received: " .. lineR) 

    client:close()
end

return

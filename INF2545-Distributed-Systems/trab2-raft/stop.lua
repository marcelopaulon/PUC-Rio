local lrpc = require "luarpc"

ip = "localhost"

local f = assert(io.open("ports.txt", "r"))
local t = f:read("*all")
f:close()
 
local networkPorts = {}
for token in string.gmatch(t, '([^,]+)') do
    table.insert(networkPorts, tonumber(token))
 end

local port = networkPorts[tonumber(arg[1])]

if (port <= 0 or port > 65535) then
    print("Invalid port " .. port)
    return
else
    print("Stopping client on port " .. tostring(port))
end

obj = lrpc.createProxy(ip, port, "interface.idl", true)

print(obj.StopNode())

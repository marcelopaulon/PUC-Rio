local luarpcIdl = require "luarpcIdl"

struct = luarpcIdl.struct
interface = luarpcIdl.interface

local lrpc = require "luarpc"

dofile("example.idl")
idl = luarpcIdl.find("minhaInt")

ip = "localhost"

print("Port: ")
port = io.read("*n") -- read a number
io.read()

if (port <= 0 or port > 65535) then
    print("Invalid port " .. port)
    return
end

obj = lrpc.createProxy(idl, ip, port)

mystruct = {
    nome = "Marcelo",
    peso = 90.0,
    idade = 25,
    teste = {
        strInterna = "minha str interna",
        doubleInterno = 4.5
    }
}

rd, r1, r2 = obj:foo(2.1, "mystring", mystruct)

print("foo() returned " .. (rd or "nil") .. ',' .. (r1 or "nil").. ',' .. (r2 or "nil"))

local json = require "json"
err, booR, d1, s1 = obj:boo(5.7)

if err then
    print("boo() returned an error: " .. err)
else
    print("boo() returned: " .. json.encode(booR))
    print(" .......... , " .. d1 .. ", " .. s1)
end
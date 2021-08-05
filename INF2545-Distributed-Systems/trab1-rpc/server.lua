local luarpcIdl = require "luarpcIdl"

struct = luarpcIdl.struct
interface = luarpcIdl.interface

local lrpc = require "luarpc"

dofile("example.idl")
idl = luarpcIdl.find("minhaInt")

impl = {
    foo = (function(d1, s1, minhaStruct1) 
        return d1*102, minhaStruct1.teste.doubleInterno*100
    end),
    boo = (function(d1) 
        mystruct = {
            nome = "Joao Jr",
            peso = d1*3,
            idade = 18,
            teste = {
                strInterna = "dddddd",
                doubleInterno = 18.9
            }
        }
        return mystruct, 1, 1.1
    end)
}

impl2 = {
    foo = (function(d1, s1, minhasStruct1) 
        return d1*10, 1338
    end),
    boo = (function(d1) 
        mystruct = {
            nome = "Joao",
            peso = d1,
            idade = 50,
            teste = {
                strInterna = "iiiiii",
                doubleInterno = 19.0
            }
        }
        return mystruct, "abc", 3.1415
    end)
}

lrpc.registerServant(idl, impl)
lrpc.registerServant(idl, impl2)
lrpc.waitIncoming()


local lu = require "luaunit"

local luarpcIdl = require "luarpcIdl"

struct = luarpcIdl.struct
interface = luarpcIdl.interface

local lrpc = require "luarpc"

dofile("tests.idl")
local idl = luarpcIdl.find("minhaInt")

local ip = "localhost"

local port = 1234
local obj = lrpc.createProxy(idl, ip, port)

function getValidStruct()
    local mystruct = {
        nome = "Marcelo",
        peso = 90.0,
        tipo = "A",
        idade = 25,
        teste = {
            strInterna = "minha str interna",
            doubleInterno = 4.5
        }
    }

    return mystruct
end

function testNotChar()
    local mystruct = getValidStruct()

    -- string instead of char:
    mystruct.tipo = "abc"

    err, res = obj:foo(2.1, "mystring", mystruct)

    lu.assertEquals(err,"Client error: argument error (pos=3): struct minhaStruct: expected type char - actual=string")
    lu.assertEquals(res,nil)

    -- double instead of char:
    mystruct.tipo = 2.4

    err, res = obj:foo(2.1, "mystring", mystruct)

    lu.assertEquals(err,"Client error: argument error (pos=3): struct minhaStruct: expected type char - actual=double")
    lu.assertEquals(res,nil)
end

function testNotInt()
    local mystruct = getValidStruct()

    -- string instead of int:
    mystruct.idade = "abc"

    err, res = obj:foo(2.1, "mystring", mystruct)
    
    lu.assertEquals(err,"Client error: argument error (pos=3): struct minhaStruct: expected type int - actual=string")
    lu.assertEquals(res,nil)
    
    -- double instead of int:
    mystruct.idade = 24.4

    err, res = obj:foo(2.1, "mystring", mystruct)

    lu.assertEquals(err,"Client error: argument error (pos=3): struct minhaStruct: expected type int - actual=double")
    lu.assertEquals(res,nil)
end

function testNotString()
    local mystruct = getValidStruct()

    -- double instead of string:
    mystruct.teste.strInterna = 2

    err, res = obj:foo(2.1, "mystring", mystruct)
    
    lu.assertEquals(err,"Client error: argument error (pos=3): struct minhaStruct: struct minhaStructInterna: expected type string - actual=double")
    lu.assertEquals(res,nil)

    -- table instead of string:
    mystruct.teste.strInterna = getValidStruct()

    err, res = obj:foo(2.1, "mystring", mystruct)

    lu.assertEquals(err,"Client error: argument error (pos=3): struct minhaStruct: struct minhaStructInterna: expected type string - actual=table")
    lu.assertEquals(res,nil)
end

function testWrongNumberOfParams()
    local mystruct = getValidStruct()

    -- 4 instead of 3 params
    err, res = obj:foo(2.1, "mystring", mystruct, mystruct)

    lu.assertEquals(err,"Client error: expected 3 parameters - actual=4")
    lu.assertEquals(res,nil)

    -- 2 instead of 3 params
    err, res = obj:foo(2.1, "mystring")

    lu.assertEquals(err,"Client error: expected 3 parameters - actual=2")
    lu.assertEquals(res,nil)
end

function testCallNonExistingMethodOnClientStub()
    lu.assertEquals(obj:mmm(), 'Method mmm is undefined')
end

os.exit( lu.LuaUnit.run() )

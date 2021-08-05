local me = {}

local typeRegistry = {}
local interfaceRegistry = {}

local primitiveTypes = { int = true,
                         double = true,
                         char = true,
                         string = true
                       }
me.primitiveTypes = primitiveTypes

function me.struct(data)
    if data.name == nil then
        print("[FATAL] - Null struct name")
        os.exit(-1)
    end

    if data.fields == nil then
        print("[FATAL] - Struct cannot be empty")
        os.exit(-1)
    end

    if typeRegistry[data.name] ~= nil then
        print("[FATAL] - Duplicate struct " .. data.name)
        os.exit(-1)
    end

    usedStructs = {}
    for i, v in ipairs(data.fields) do
        if (primitiveTypes[v.type] == nil and typeRegistry[v.type] == nil) then
            print("[FATAL] - Struct " ..  data.name .. ": unrecognized type '" .. v.type .. "' on field '" .. v.name .. "'")
            os.exit(-1)
        end

        if (primitiveTypes[v.type] == nil) then
            usedStructs[v.type] = typeRegistry[v.type]
        end
    end

    data.structs = usedStructs
    typeRegistry[data.name] = data
    print("Registered type " .. data.name)
end

function me.interface(data)
    if data.name == nil then
        print("[FATAL] - Null interface name")
        os.exit(-1)
    end

    if data.methods == nil then
        print("[FATAL] - No interface methods")
        os.exit(-1)
    end

    if interfaceRegistry[data.name] ~= nil then
        print("[FATAL] - Duplicate interface " .. data.name)
        os.exit(-1)
    end

    local usedStructs = {}
    
    for k, v in pairs(data.methods) do
        if (v.resulttype == nil) then
            print("[FATAL] - Interface " ..  data.name .. " - method " .. k .. ": result type cannot be null")
            os.exit(-1)
        end

        if (v.resulttype ~= "void" and primitiveTypes[v.resulttype] == nil and typeRegistry[v.resulttype] == nil) then
            print("[FATAL] - Interface " ..  data.name .. " - method " .. k .. ": unrecognized return type '" .. v.resulttype)
            os.exit(-1)
        end

        if (v.args ~= nil) then
            for i, varg in ipairs(v.args) do
                if varg.direction ~= "in" and varg.direction ~= "out" then
                    print("[FATAL] - Interface " ..  data.name .. " - method " .. k .. ": unrecognized direction for positional argument " .. i .. " - '" .. varg.direction .. "'")
                    os.exit(-1)
                end

                if (primitiveTypes[varg.type] == nil and typeRegistry[varg.type] == nil) then
                    print("[FATAL] - Interface " ..  data.name .. " - method " .. k .. ": unrecognized type for positional argument " .. i .. " - '" .. varg.type .. "'")
                    os.exit(-1)
                end

                if (primitiveTypes[varg.type] == nil) then
                    usedStructs[varg.type] = typeRegistry[varg.type]
                end
            end
        end
        v.structs = usedStructs
    end

    data.structs = usedStructs

    interfaceRegistry[data.name] = data
    print("Registered interface " .. data.name)
    return data
end

function me.find(name) 
    return interfaceRegistry[name]
end

return me
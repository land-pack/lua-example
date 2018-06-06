-- Local tool function

local function tableLength(t)
    local counter = 0
    for _ in pairs(t) do
        counter = counter + 1
    end
    return counter
end


-- basic meta
meta = {
    __index = function(t, key)
        print(key)
        if key == 'key2' then
            return "metatablevalue"
        else
            return nil
        end
      end
}

--[[
__index only call when there are no value map by the key
When there are some body access a key without define, you
can response with the custom value as you like.
]]--

default_meta = {
    __index = function(t, key)
      return "default value" 
      end
}

--[[

Now, i want to return a the length of current table once you
try to access a key without exists.
]]--

len_meta = {
    __index = function(t, key)
    return tableLength(t)
    end
}


mytable = setmetatable({key1 = "value1", ke3="aa"}, len_meta)


print(mytable.key1, mytable.key2)

a={k=1, b=2}

print(tableLength(a))

#!/usr/local/bin/lua

--[[ A metatable is a table that helps in modifying the behavior of a table it is
attached to with the help of a key set and related meta methods. These meta method
are powerful Lua functionality that enables features like..

]]--


--[[ Let's fiirst look at how to set one table as metatable of another. It is shown
below.

]]--


mytable = {}
mymetatable = {}
table_obj = setmetatable(mytable, mymetatable)
print(type(table_obj))



mytable = setmetatable({name = "frank"}, {
        __index = function(mytable, key)
        
        if key == "key2" then
            return "meta_table_value"
        else
            return mytable[key]
        end
    end
})

print(mytable.key2)
print(mytable.name)


simple_table = {name = "jack"}

print(simple_table.name)


--[[ We can have a simplified version of the above program as shown below.
  ]]--

mytable = setmetatable({key1 = "jello"}, {__index = { key2 = "default value" }})

print(mytable.key1, mytable.key2)


#!/usr/local/bin/lua


--[[ Iterator is a construct that enables you to traverse through the elements of
    the so called collection or container. In Lua, these collections often refer
    to tables, which are used to create various data structure like array.
]]--

arr = {"lua", "Python"}

for key, value in ipairs(arr)
do
    print(key, value);
end

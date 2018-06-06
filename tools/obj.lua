--[[
We can use __str__ and __repr__ in Python, so i want 
to implement something like that in Lua. I don't want to
see me table with nothing when i print it. I hope to see
thing like .

print(mytable)
{
    'name' : 'frank',
    'age'  : 18
}
]]--


example = {}

repr = {
    __tostring = function(t)
    repr = '{ '
    too_large = 0
    max_items = 3
    for k, v in pairs(t) 
    do
        too_large = too_large + 1
        if too_large < max_items then
            repr = repr .. ' ' .. k  .. ': ' ..  tostring(v) .. ','
        else
            repr = repr .. ' ... '
            break
        --print(k, v)
        end
    end
    repr = repr .. '}'
    return repr
end
}




 -- newtable = setmetatable(example, repr)

--[[
print(newtable)
newtable.a = 'asdad'
newtable.w = 'wwww'
newtable.p = 'sss'
print(newtable)
]]--

setter = {
    __newindex = function(t, k, v)
        __counter = t.__counter or 0  -- no atom ..operation
        print(k, v)
        if v == nil and rawget(t,k) then
            rawset(t, '__counter', __counter - 1 )
            print('xxx')
            rawset(t, k, v)
        else
            rawset(t, '__counter', __counter + 1 )
            rawset(t, k, v)
        end
    end
    ,
    __index = function(t, k)
    print('set nil to key')
    print(k)
    end
}

all_meta = {
    __tostring = repr.__tostring,
    __newindex = setter.__newindex
}

newtable = setmetatable(example, all_meta)



newtable.a='aa'
newtable.b='ss'
newtable.a = nil


print(newtable.__counter)
print(newtable)

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


example = { name='frank', age=18 }


print(example)
-- table: 0x7f9353e047f0


str = {
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


newtable = setmetatable(example, str)


print(newtable)

newtable.a = 'asdad'
newtable.w = 'wwww'
newtable.p = 'sss'

print(newtable)


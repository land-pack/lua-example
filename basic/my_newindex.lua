a = {
    name = 'frank'
}

newmeta = {
    __newindex = function(t, k, v)
    rawset(t, k, 'new_'..v)
    end
}


setmetatable(a, newmeta)


a.key = 'my key'


print(a.key)

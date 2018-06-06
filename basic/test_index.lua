a = { key = 'frank' }







for k, v in pairs(a)
do
    print("key : "..k.." value :"..v)
end


newtable = setmetatable(a, {
    __index = function(newtable, key)
    if key == "key2" then 
        print(".......")
        return "value has change"
     else
        return nil
    end
end
})



for k, v in pairs(newtable)
do
    print("key : "..k.." value :"..v)
end


--[[
I add a new item key with `key2` and see what happen ..

]]--

newtable.key2 = 'it is me'


for k, v in pairs(newtable)
do
    print("key : "..k.." value :"..v)
end

print(newtable.key2)

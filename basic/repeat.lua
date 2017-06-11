#!/usr/local/bin/lua


--[[ declare a wait function use os.time() and repeat until ]]--


function wait(sec)
    local timer = os.time()
    repeat until os.time() > timer + sec
end


print('Start ....')
wait(2)
print("end ....")

#!/usr/local/bin/lua


--[[ A function is a group of statements that together perform a task. ]]--


local function say(something)
    d = string.rep(something, 3);
    print(d)
end

say('hellojack');

function average(...)
    result = 0
    local arg = {...}
    for i, v in ipairs(arg) do
        result = result + v
    end
    return result/#arg
end

print("The average is ", average(10,20,30,40));

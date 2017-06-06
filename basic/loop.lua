#!/usr/local/bin/lua

local counter = 0;

while (true)
do
    print("Hello, ",counter);
    counter = counter + 1;
    if counter > 100
    then
        break
    end
end


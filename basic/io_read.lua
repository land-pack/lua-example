#!/usr/local/bin/lua


--[[ Only input number ]]--

print("Please input number:")

local d = io.read("*n")
--d = 9
io.flush()
io.close()

print("You input data is :",d)



--[[ Input anything ]]--

print("Please input a line:")
local c = io.read("*l")

print("You input is :",c)


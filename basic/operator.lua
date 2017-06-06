#!/usr/local/bin/lua

--[[ An operator is a symbol that tells the interpreter to perform specific
    mathematical or logical manipulations. Lua language is rich in built-in
    operators and provides the following type of operators -

    - Arithmetic Operators
    - Relational OPerators
    - Logical Operators
    - Misc Operators
]]--


local a = 10;
local b = 20;


print("a + b", a+b);
print("a - b", a-b);
print("a * b", a*b);
print("a / b", a/b);




print("a == b", a == b);
print("a ~= b", a ~= b);
print("a > b", a > b);
print("a < b", a < b);


a = true;
b = false;

print("a and b", a and b);
print("a or b", a or b);
print("a not b", not (a and b));


a = 'hello';
b = 'world';

print("a..b", a..b);
print("#a", #a);

--[[ Operators Precedence in Lua ]]--

print("the length of 'hello' * 9", #"hello" * 9);
--[[print("Hello" * 3); ]]--
print(string.rep("hello", 3));

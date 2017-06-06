#!/usr/local/bin/lua

--[[ In Lua, there is a function called `type` that enables us to know the type of the
    varibale. Some examples are given in the following code.
  ]]--



print(type("What is my type"))
t = 10

print(type(5.8*t));
print(type(true));
print(type(print));
print(type(nil));
print(type(type(ABC)));

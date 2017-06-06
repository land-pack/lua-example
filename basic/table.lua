#!/usr/local/bin/lua

--[[ 
    Tables are the only data structure available in Lua that helps us create
    different types like arrays and dictionaries. Lua uses associative arrays
    and which can be indexed with not only numbers but also with strings except
    nil. Tables have no fixed size and can grow based on our need.

    Lua uses tables in all representations inclduing representation of packages.
    When we access a method string.format, it means, we are accessing the format
    function available in the string package.
]]--


--sample table initialization

mytable = {};

--simple table value assignment

mytable[1] = "Lua";

--removing reference

mytable = nil

--lua garbage collection will take care of releasing memory

--[[
    When we have a table a with set of elements and if we assign it to b, both a
    and b refer to the same memory. No separate memory is allocated separately
    for b. When a is set to nil, table will be still accessible to b. When there
    are no reference to a table, then garbage collection in Lua takes care of 
    cleaning up process to make these unreferenced memory to be reused again.


    An exmple is shown below for explaining the above mentioned features of 
    tables.
    ]]--


-- Simple empty table
mytable = {};

print("Type of mytable is ", type(mytable))

mytable[1] = "Lua";
mytable["wow"] = "Python";

print("mytable Element at index 1 is ", mytable[1])
print("mytable Element at index `wow` is ", mytable["wow"])

-- alternatetable and mytable refers to same table
alternatetable = mytable;

print("alternatetable Element at index 1 is ", alternatetable[1])
print("alternatetable Element at index wow is ", alternatetable["wow"])

alternatetable["wow"] = "change it ";

print("mytable Element at index `wow` is ", mytable["wow"]);

-- We can use the concat function to concatenate two tables as shown below

fruits = {"banana", "orange", "apple"}

-- returns concatenated string of table
print("Concatenated string ", table.concat(fruits))

-- concatenate with a character
print("Concatenated string ", table.concat(fruits, ", "))

-- concatenate fruits based on index
print("Concatenated string ", table.concat(fruits, ", ", 2, 3))

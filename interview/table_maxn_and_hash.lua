#!/usr/local/bin/lua


-- [[ The different between `table.maxn` and  `#` ]]--


local arr = { 1, 2, 3, 4, 5 }

print(table)
print("#arr =", #arr)
print("table.getn(arr) =", table.getn({}))

print("After insert some element to the array with empty value ..")
arr[8] = 88

print("#arr =", #arr)
print("table.getn(arr) =", table.getn(arr))

#!/usr/local/bin/lua


s = "Hello World from Lua"

for w in string.gmatch(s, "%a+") do
        print(w)

end


--[[
--The next example collects all pairs key=value from the given string
--into a table:
  ]]--

t = {}

s = "name=frank, age=25"

for k, v in string.gmatch(s, "(%w+)=(%w+)") do
        t[k] = v
        print(v)
end

for v in pairs(t) do
        print(v)
end

--Access a table by `dot` --

print('t.name= '..t.name)
print('t.age '..t.age)


-- Apply on something field --

--get the node from key string

NODE = "KENGINE-127.0.0.1:9001"
g_node = string.gmatch(NODE, "(%w+)=(.+)")

for k, v in g_node do
	print(v)

end

origin_node_list = {
	"KEGNINE-127.0.0.1:9001",
	"KEGNINE-127.0.0.1:9002",
	"KEGNINE-127.0.0.1:9003"
}

origin_node_list_new = {}

for i, s in ipairs(origin_node_list) do 
	for k, v in string.gmatch(s , "(%w)-(.+)") do
		table.insert(origin_node_list_new, v)
	end 
end



print(#origin_node_list_new)
for k, v in ipairs(origin_node_list_new) do
	print('the host is '..v)
end 

---split a strings ---

s = 'node|host|id'

function string.split(str, delimiter)
	if str==nil or str=='' or delimiter==nil then
		return nil
	end
	
    local result = {}
    for match in (str..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match)
    end
    return result
end

p = string.split(s, '|')
print(#p)

print(p[1])
print(p[2])
print(p[3])
#!/usr/local/bin/lua

client_connection_manager = {}
local per_connection_limit = 9
fake_node_list = {101, 102, 103}

--[[ init client_connection_manager with empty array ]]--
for i in pairs(fake_node_list)
do
    client_connection_manager[i] = {}
end


--[[ Wait the client connection to the server ]]--
while (true)
do
    local user = io.read("*l")

    for node_id in pairs(fake_node_list)
    do
        client_connections  = client_connection_manager[node_id]
        if #client_connections % per_connection_limit == 0 then
            --[[ if current node is fill with 9  ]]--
            break
        else
            --[[ try next node ]]--
            client_connections[node_id] =     
        end
    end
end

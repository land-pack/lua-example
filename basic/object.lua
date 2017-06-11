#!/usr/local/bin/lua


--[[ define a lua class by table ]]--

local pet = {}

pet.type = ''
pet.message = 'hungry!'
pet.hungry = function(self) print(self.type.." is "..self.message) end
pet.points = 0



--[[ How does it work? ]]--

local dog = pet

dog.type = 'dog'
dog:hungry()
print(dog.points)

Base = {}


function Base:new(id, name)
    self.id = id
    self.name = name
    return self
end

function Base:status()
    return string.format("%d-%s" , self.id, self.name)
end

b = Base:new(123, "frank")

print(b:status())



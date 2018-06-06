--[[
Because classes are objects, they can get methods from other classes, too. That makes inheritance (in the usual object-oriented meaning) quite easy to implement in Lua.

Let us assume we have a base class like Account
]]--

Account = { balance = 0 }

function Account:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Account:deposit(v)
    self.balance = self.balance + v
end

function Account:withdraw(v)
   if v > self.balance then error"insufficient funds" end
   self.balance = self.balance -v
end

--[[
From that class, we want to derive a subclass SpecialAccount, which allows the customer to withdraw more than his balance. We start with an empty class that simply inherits all its operations from its base class:
]]--

SpecialAccount = Account:new()

--[[
Up to now, SpecialAccount is just an instance of Account. The nice thing happens now.
]]--

s = SpecialAccount:new{limit=1000.00}

--[[
SpecialAccount inherits new from Account like any other method. This time, however, when new executes, the self parameter will refer to SpecialAccount. Therefore, the metatable of s will be SpecialAccount, whose value at index __index is also SpecialAccount. So, s inherits from SpecialAccount, which inherits from Account, When we evaluate
]]--

s:deposit(100.00)

function SpecialAccount:withdraw(v)
    if v - self.balance >= self.getLimit() then error"insufficient funds"
    end
    self.balance = self.balance -v
end

function SpecialAccount:getLimit()
    return self.limit or 0
end



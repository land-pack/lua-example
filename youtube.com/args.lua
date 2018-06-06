function getSumMore(...)
    
    local sum = 0
    for i, v in pairs{...} do
        sum = v + sum
    end

    return tostring(sum)
end

print("sum of %s",  tostring(getSumMore(1,2,3,4,5,6)))

co = coroutine.create(function()
    for i =1, 10, 1 do
        if i % 2 == 0 then coroutine.yield() end
        print('co -- ' .. i)
    end
 end
 )

co2 = coroutine.create(function()
    for i =1, 10, 1 do
        if i % 3 == 0 then coroutine.yield() end
        print('co2 -- ' .. i)
    end
 end
 )

 print(coroutine.status(co))

 coroutine.resume(co)

 print(coroutine.status(co))
 
 coroutine.resume(co2)
 coroutine.resume(co)

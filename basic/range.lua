function square(_end, _start)
    if _start < _end
    then
        _start = _start + 1
    return _start, _start * _start
    end
end


for i, v in square, 3, 0
do
    print("i "..i.."v "..v)
end


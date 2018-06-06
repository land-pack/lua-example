
function spliteWord(lines)

    wordTable = {}
    local i = 1
    for word in string.gmatch(lines, '[^%s]+') do
        wordTable[i] = word
        i = i + 1
    end
    return wordTable, i
end


words, numOfWord = spliteWord('hello world')

for k, v in pairs(words) do
    print(v)
end

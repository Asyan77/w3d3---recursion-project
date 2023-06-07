def range(start, ending)
    return [1] if ending == start + 1 
    range(start, ending-1) + [ending-1]
end

p range(1,5)
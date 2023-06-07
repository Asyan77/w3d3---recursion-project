def range(start, ending)
    return [1] if ending <= start + 1 
    range(start, ending-1) + [ending-1]
end

#

def exponent(base, num)
    return 1 if num == 0
    base * exponent(base, num-1)
end

def deep_dup(array)
    return [] if array == []
    deep_dup(array[0...-1]) << array[-1].dup
end

array = [1,[2],3]
array2 = deep_dup(array)
array2[1] << 2
p array
p array2


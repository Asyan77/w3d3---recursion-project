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

def fibonacci(n)
    result_arr = []
    return [1] if n <= 2 && n > 0
     next_num = [fibonacci(n-1) + fibonacci(n-2)]
     result_arr + next_num
 result_arr
end 


p fibonacci(5)

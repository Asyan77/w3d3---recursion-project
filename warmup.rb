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
    return [] if n <= 0
    return [1] if n == 1
    return [1, 1] if n == 2
  
    previous_numbers = fibonacci(n - 1)
    previous_numbers << previous_numbers[-1] + previous_numbers[-2]
  end
  


p fibonacci(10)

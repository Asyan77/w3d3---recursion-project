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
  
  def bsearch(array, target)
    index = array.index(target)
    return nil if index == nil
    p index
    # bsearch(array[0...index])
  end

  def merge_sort(array)
#    if array.length <= 1
    # merge(first, last)
#    end
    return [] if array.length == 0
    pivot = array[0]
    first = array[1..-1].select {|ele| ele < pivot}
    last = array[1..-1].select {|ele| ele > pivot}
    merge_sort(first) + [pivot] + merge_sort(last)
  end

#   array = [4,3,8,19,55, 2]
#   p merge_sort(array)

  def subsets(array)
    return [[]] if array.empty?
    array1 = subsets(array[0...-1])
    array1.concat(array1.map {|subarray| subarray + [array[-1]]})
  end

  def perm(array)
    return array if array.length <=1
    result = []
    array.each_with_index do |element, index|
        remaining = array[0...index] + array[(index + 1)..-1]
        sub_permutations = permutations(remaining)
  end


  def factorial(n)
    return 1 if n <= 1
  
    n * factorial(n - 1)
  end

array = [1,2,3]
p perm(array)
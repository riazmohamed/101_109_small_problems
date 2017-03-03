# odd_numbers.rb

def oddities(arr)
  new_arr = []
  counter = 0
  loop do
    break if arr.empty?

    current_element = arr[counter]
    new_arr << current_element if counter == 0 || counter.even?

    counter += 1
    break if counter == arr.size
  end

  new_arr
end

# example
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

puts "=========="
# given solution

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

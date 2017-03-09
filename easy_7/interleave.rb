# interleave.rb

# option 1
def interleave(arr1, arr2)
  new_arr = []
  counter = 0
  loop do
    new_arr << arr1[counter]
    new_arr << arr2[counter]

    counter += 1
    break if counter == arr1.size || counter == arr2.size
  end
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# option 2
def interleave1(arr1, arr2)
  result = []
  arr1.each_with_index do |element, index|
    result << element << arr2[index]
  end
  result
end

p interleave1([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

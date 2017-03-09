# reverse.rb

# my_soluttion
# def reverse!(arr)
#   result = arr.sort! { |a, b| b <=> a }
# end

# given solution
def reverse!(arr)
  left_index = 0 # => denoting the first index in the array
  right_index = -1 # => denoting the last index in the array

  while left_index < arr.size / 2
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]

    left_index += 1
    right_index -= 1
  end

  arr
end

# Examples:

list = [1,2,3,4]
result = reverse!(list)
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!([]) # => []
p list == []

list = %w(Peter Paul Mary)
p result = reverse!(list)
p list.object_id == result.object_id

list = [1,2,5,4,3]
p result = reverse!(list)
p list.object_id == result.object_id

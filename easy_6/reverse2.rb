# reverse2.rb

# option 1
def reverse(arr)
  new_arr = []
  counter = -1

  loop do
    break if arr.empty?
    last_obj = arr[counter]
    new_arr << last_obj

    counter -= 1
    break if new_arr.size == arr.size
  end
  new_arr
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
new_list == [3, 2, 1]

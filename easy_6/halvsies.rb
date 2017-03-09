# halvsies.rb

def halvsies(arr)
  arr2 = arr[-(arr.size / 2)..-1]
  arr.partition {|obj| arr.size > 1 ? arr2.include?(obj) == false : obj}
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])

# given solution
puts "======== given solution ========"
def halvsies2(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end

p halvsies2([1, 2, 3, 4])
p halvsies2([1, 5, 2, 4, 3])
p halvsies2([5])
p halvsies2([])

# running_total.rb

# option 1
def running_total(array)
  sum = 0
  array.map { |num| sum += num }
end

# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
#
# Examples:
#
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# option 2
puts "==========="
def running_total_1(array)
  sum = 0
  arr = array.each_with_object([]) { |num, arr| arr << sum += num }
end

p running_total_1([2, 5, 13]) == [2, 7, 20]
p running_total_1([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total_1([3]) == [3]
p running_total_1([]) == []

p running_total_1([2, 5, 13])
p running_total_1([14, 11, 7, 15, 20])
p running_total_1([3])
p running_total_1([])

# option 3
puts "==========="
def running_total_2(array)
  arr = []
  return array if array.empty?
  arr << array.inject do |sum, n|
         arr << sum
         sum + n
         end
  arr
end

p running_total_2([2, 5, 13]) == [2, 7, 20]
p running_total_2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total_2([3]) == [3]
p running_total_2([]) == []

p running_total_2([2, 5, 13])
p running_total_2([14, 11, 7, 15, 20])
p running_total_2([3])
p running_total_2([])

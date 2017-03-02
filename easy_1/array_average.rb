# array_average.rb

# option 1
def average(array)
  sum = 0
  array.each { |num| sum += num }
  array_average = sum / (array.size)
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

puts "=================="
# option 2
def avg(arr)
  sum = 0
  arr_avg = 0

  counter = 0
  loop do
    current_num = arr[counter]
    sum += current_num

    counter += 1
    if counter == arr.size
      arr_avg = sum / counter
      break
    end
  end

  arr_avg
end

puts avg([1, 5, 87, 45, 8, 8]) == 25
puts avg([9, 47, 23, 95, 16, 52]) == 40

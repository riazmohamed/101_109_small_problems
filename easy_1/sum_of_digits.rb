# sum_of_digits.rb

# option 1
def sum(number)
  sum = 0
  number.to_s.chars.map { |num| num.to_i }.each {|num| sum += num }
  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

puts "=================="

# option 2
def sum(numbers)
  num_str = numbers.to_s
  sum = 0

  counter = 0
  loop do
    current_num = num_str[counter]
    sum += current_num.to_i

    counter += 1
    break if counter == num_str.size
  end

  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

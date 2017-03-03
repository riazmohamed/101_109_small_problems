# searching_101.rb

# option 1
def prompt(msg)
  puts "==> #{msg}"
end

def suffix?(number)
  result = ''
  result = case number
           when 1
             '1st'
           when 2
             '2nd'
           when 3
             '3rd'
           when 4
             '4th'
           when 5
             '5th'
           when 6
             'last'
           end
  result
end

arr = []
counter = 0
loop do
  current_arr_index = counter
  counter += 1
  instance = suffix?(counter)
  prompt "Enter the #{instance} number:"
  current_num = gets.chomp.to_i

  arr[current_arr_index] = current_num
  break if counter == 6
end

last_element = arr.last

count_hash = {}
arr.each do |num|
  count_hash[num] = arr.count(num)
end

if count_hash.has_value?(2)
  puts "The number #{last_element} appears in #{arr}."
else
  puts "The number #{last_element} does not appear in #{arr}."
end

puts "================"
# option 2
last_num = arr.pop

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr << last_num}."
else
  puts "The number #{last_num} does not appear in #{arr << last_num}."
end

=begin
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

Examples:
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
=end

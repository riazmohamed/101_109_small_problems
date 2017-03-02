# even_numbers.rb

# Print all even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# option 1
arr = []
(1..99).each { |num| arr << num if num.even? }
puts arr

puts "=============="
# option 2
counter = 1
loop do
  puts counter if counter.even?
  counter += 1
  break if counter == 99
end

puts "=============="
# option 3
(1..99).each { |num| puts num if num.even? }

puts "=============="
# option 4
for i in (1..99)
  puts i if i.even?
end

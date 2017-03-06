# integer_to_string.rb

CHAR_SET = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

=begin
program logic
n = 4321

4321 / 1000 = 4
(4321 / 100) % 10 = 3
(4321 / 10) % 10 = 2
4321 % 10 = 1

4321 / 10 = 432
432 / 10 = 43
43 / 10 = 4 # => therfore 4321 / 1000 = 4
=end

def integer_to_string(integer)

  counter = 0
  loop do
    counter += 1
    remainder = 10 ** counter
    mod = integer.divmod(remainder)
    break if mod[0] == 0
  end

  arr = []
  loop do
    counter -= 1
    denominator = 10 ** counter
    key = (integer / denominator) % 10
    arr << CHAR_SET[key]
    break if counter == 0
  end

  arr.join
end

# Examples

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

puts "======= given solution ======="
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string_given(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string_given(4321) == '4321'
p integer_to_string_given(0) == '0'
p integer_to_string_given(5000) == '5000'

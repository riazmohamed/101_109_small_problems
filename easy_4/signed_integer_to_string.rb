# signed_integer_to_string.rb

CHAR_SET = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def signed_integer_to_string(integer)
  result = ''

  if integer < 0
    new_integer = integer * -1
  else
    new_integer = integer
  end

  counter = 0
  loop do
    counter += 1
    remainder = 10 ** counter
    mod = new_integer.divmod(remainder)
    break if mod[0] == 0
  end

  arr = []
  loop do
    counter -= 1
    denominator = 10 ** counter
    key = (new_integer / denominator) % 10
    arr << CHAR_SET[key]
    break if counter == 0
  end

  result = arr.join
  result.prepend("+") if integer > 0
  result.prepend("-") if integer < 0

  result
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

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

def signed_integer_to_string_given(number)
  case number <=> 0
  when -1 then "-#{integer_to_string_given(-number)}"
  when +1 then "+#{integer_to_string_given(number)}"
  else         integer_to_string_given(number)
  end
end

p signed_integer_to_string_given(4321) == '+4321'
p signed_integer_to_string_given(-123) == '-123'
p signed_integer_to_string_given(0) == '0'

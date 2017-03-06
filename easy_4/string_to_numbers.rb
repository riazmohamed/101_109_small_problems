# string_to_numbers.rb

NUMBERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)
  counter = 0
  num = 0

  loop do
    current_string = string[counter]
    current_digit = NUMBERS[current_string]
    num = 10 * num + current_digit

    counter += 1
    break if counter == string.length
  end

  num
end

# Examples
#
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

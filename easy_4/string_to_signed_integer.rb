# string_to_signed_integer.rb

NUMBERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_signed_integer(string)
  counter = 0
  num = 0

  loop do
    counter += 1 if string[counter] == "+" ||  string[counter] == "-"
    current_string = string[counter]
    current_digit = NUMBERS[current_string]
    num = 10 * num + current_digit

    counter += 1
    break if counter == string.length
  end

  num = num * (-1) if string[0] == "-"
  num
end

# Examples

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

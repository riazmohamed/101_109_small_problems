# hexadecimal_to_integer.rb

NUMBERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15,'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15 }

def hexadecimal_to_integer(string)
  counter = 0
  length = string.size
  arr = string.chars
  num = 0

  loop do
    length -= 1
    current_string = arr[counter]
    current_digit = NUMBERS[current_string]
    current_eval = current_digit * 16 ** length
    num = num + current_eval
    counter += 1
    break if counter == string.size
  end

  num
end

hexadecimal_to_integer('4D9f') == 19871

# list_of_digits.rb

def digit_list(numbers)
  num_string = numbers.to_s
  num_string_arr = num_string.chars

  new_arr = num_string_arr.map { |num_str| num_str.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]

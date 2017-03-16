# rotate_rightmost_digits.rb

def rotate_rightmost_digits(num, rotate_index)
  arr = num.to_s.chars
  rotate_element = arr.delete_at(-rotate_index)
  result = arr + [rotate_element]
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

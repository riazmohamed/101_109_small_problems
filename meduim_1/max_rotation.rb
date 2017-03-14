# max_rotation.rb

def max_rotation(num, rotate_index = 0)
  arr = num.to_s.chars
  number = 0
  loop do
    if arr.size == 1
      number = num
      break
    end

    result = rotate_rightmost_digits(arr, rotate_index)
    arr = result
    number = result.join.to_i
    rotate_index += 1
    break if rotate_index == num.to_s.chars.size - 1
  end
  number
end

def rotate_rightmost_digits(arr, rotate_index)
  rotate_element = arr.delete_at(rotate_index)
  result = arr + [rotate_element]
  result
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# twice.rb

# My solution
def twice(number)
  arr = []
  num_arr = number.to_s.chars
  avg_index = num_arr.size / 2
  num_arr.each do |num|
    if num_arr.index(num) <= avg_index
      arr << num_arr.shift
    end
  end

  num_arr == arr ? number : number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

# given solution
def twice1(number)
  string_number = number.to_s
  center = string_number.length / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

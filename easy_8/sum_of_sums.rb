# sum_of_sums.rb

def sum_of_sums(arr)
  result = []
  arr.each_with_index do |arr_obj, index|
    result.empty? ? result << arr_obj : result << arr_obj + result[index -1]
  end
    result.inject(:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

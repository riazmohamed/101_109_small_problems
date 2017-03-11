# multiply_list.rb

# my solution
def multiply_list(arr1, arr2)
  result = []
  arr1.each_with_index do |arr1_ele, idx|
      result << arr1_ele * arr2[idx]
  end
  result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# given solution same as mine

# Futher_exploration

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|a, b| a * b }
end

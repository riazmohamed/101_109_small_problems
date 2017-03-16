# sum_square_difference.rb

def sum_square_difference(n)
  sequence_arr = *(1..n)
  sum = sequence_arr.inject(:+) ** 2
  squares_arr = []
  sequence_arr.each {|num| squares_arr << num ** 2 }
  squares_sum = squares_arr.inject(:+)
  total = sum - squares_sum
end

p sum_square_difference(3)
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10)
p sum_square_difference(1)
p sum_square_difference(100)


# given solution
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

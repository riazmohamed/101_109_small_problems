# show_multiplicative_average.rb

def show_multiplicative_average(arr)
  result = 1.000
  arr.each do |num|
    result *= num
  end

  average = (result / arr.size)
  puts "The result is #{format('%.3f', average)}"
end

p show_multiplicative_average([3, 5])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])

# can also use Ennumenrable#inject

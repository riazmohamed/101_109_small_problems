# fibonacci.rb

# here the argument num indicates the instance of the number
# solving problem the old fashioned way
def fibonacci(num)
  arr = []
  (1..num).each do |number|
    number == 1 || number == 2 ? arr << 1 : arr << arr[-1] + arr[-2]
  end
  arr.last
end

# take aways
# the first two numbers in fibonnacci are always 1

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(12)
p fibonacci(20)

# attempt using recursion.
def fibonacci1(num)
  num == 1 || num == 2 ? 1 : fibonacci1(num - 2) + fibonacci1(num - 1)
end

p fibonacci1(1)
p fibonacci1(2)
p fibonacci1(3)
p fibonacci1(4)
p fibonacci1(5)
p fibonacci1(12)
p fibonacci1(20)

# can be further refactored as :
# num > 2 ? fibonacci1(num - 2) + fibonacci1(num - 1) : 1

# given solution
def fibonacci_given(nth)
  return 1 if nth <= 2
  fibonacci_given(nth - 1) + fibonacci_given(nth - 2)
end

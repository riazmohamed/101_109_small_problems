# fibonacci_procedural.rb

# my attempt
def fibonacci(num)
  arr = []
  (1..num).each do |number|
    number == 1 || number == 2 ? arr << 1 : arr << arr[-1] + arr[-2]
  end
  arr.last
end

p fibonacci(20)
p fibonacci(100)
p fibonacci(100_001)

# given solution
def fibonacci_given(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

p fibonacci_given(20)
p fibonacci_given(100)
p fibonacci_given(100_001)

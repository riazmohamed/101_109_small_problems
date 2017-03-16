# fibonacci_last.rb

def fibonacci_last(num)
  first, last = [1, 1]
  3.upto(num) do
    first, last = [last, first + last]
  end
  last.to_s[-1].to_i
end

p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)
p fibonacci_last(100_001)
p fibonacci_last(1_000_007)
p fibonacci_last(123456789)

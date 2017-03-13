# negative.rb

def negative(num)
  num.to_s.chars.first == "-" ? num : num * -1
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0

# given solution
def negative(number)
  number > 0 ? -number : number
end

def negative(number)
  -number.abs
end

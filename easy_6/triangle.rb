# triangle.rb

# option 1
def triangle(num)
  counter = 1
  str = ''

  loop do
    break if counter > num
    str << "*"
    puts str.rjust(num)
    counter += 1
  end
end

p triangle(5)
p triangle(9)

puts "========== option 2 =========="
def triangle2(num)
  str = []
  for i in 1..num
    str << '*' * i
  end
  str.each { |n| puts n.rjust(num) }
end

p triangle2(5)
p triangle2(9)

puts "========== option 3 =========="
def triangle3(num)
  str = []
  counter = 0
  num.times { str << "*" * (counter += 1) }
  str.each { |n| puts n.rjust(num) }
end
p triangle3(5)
p triangle3(9)

puts "========== given option 4 =========="
def triangle4(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (" " * spaces) + ("*" * stars)
    spaced -= 1
    stars += 1
  end
end

p triangle4(5)
p triangle4(9)

# sum_product.rb

def prompt(msg)
  puts ">> #{msg}"
end

def sum(array)
  sum = 0
  array.each { |num| sum += num }
  sum
end

def product(array)
  product = 1
  array.each { |num| product *= num }
  sum
end

def sum_product(input, array)
  result = 0
  result = if input == 's'
             sum(array)
           elsif input == 'p'
             product(array)
           end
end

def function_name(input)
  result = ''
  result = if input == 's'
             "sum"
           elsif input == 'p'
             "product"
           end
end

loop do
  prompt "Please enter a number greater than 0:"
  input = gets.chomp.to_i

  prompt "Enter 's' to compute the sum, 'p' to compute the product."
  compute = gets.chomp

  arr = []
  arr = (0..input).each { |num| arr << num }

  function = function_name(compute)
  sum_or_prod = sum_product(compute, arr)
  puts "The #{function} of the integers between 1 and #{input} is #{sum_or_prod}."

  prompt "Do you want to do another calculation?"
  answer = gets.chomp.downcase
  break unless answer.start_with?("y")
end

prompt "Thank you for using the calculator. Goodbye!"

# multiply_two_num.rb

def multiply(first_number, second_number)
  if first_number.to_i < 0 || first_number.to_i == 0
    puts "Invalid Entry! Please enter a positive integer."
  elsif second_number < 0 || second_number.to_i == 0
    puts "Invalid Entry! Please enter a positive integer."
  else
    first_number * second_number
  end
end

p multiply(5, 3) == 15
p multiply('hi', 3) == 15

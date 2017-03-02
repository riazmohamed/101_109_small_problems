# room_area.rb

puts "Enter the  length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_sq_m = length * width
area_sq_ft = area_sq_m * 10.7639

puts "The area of the room is #{area_sq_m} square meters (#{area_sq_ft} square feet)"

# how_old_is_teddy.rb

# option 1
teddy_age = rand(20..200)
puts "Teddy is #{teddy_age} years old!"

puts "==============="
# option 2
age = []
(20..200).each { |num| age << num }
puts "Teddy is #{age.sample} years old!"

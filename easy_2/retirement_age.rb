# retirement_age.rb

def prompt(msg)
  puts "=> #{msg}"
end

current_year = Time.new.year

# current_age
prompt "What is your age?"
age = gets.chomp.to_i

# retirement age
prompt "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

remaining_years = retirement_age - age
retirement_year = current_year + remaining_years

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{remaining_years} years of work to go!"

=begin
Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

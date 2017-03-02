# odd.rb

# Find if the number passed in as an argument to the is_odd? method is odd

# option 1
def is_odd?(number)
  number.odd?
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false

puts "================"
# option 2
def is_odd?(number)

  loop do
    print "false" if number % 2 == 0
    print "true" if number % 2 != 0
    break
  end

end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false

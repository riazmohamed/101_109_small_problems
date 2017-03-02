# tip_calulator.rb

def prompt(msg)
  puts "=> #{msg}"
end

def tip_amount(tip_pcent, bill_amount)
  bill_amount * (tip_pcent / 100)
end

def total_bill(tip_pcent, bill_amount)
  tip_amount(tip_pcent, bill_amount) + bill_amount
end

prompt "What is the bill?"
bill = gets.chomp.to_f

prompt "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip = tip_amount(tip_percent, bill)
total = total_bill(tip_percent, bill)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

# demo solution
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0

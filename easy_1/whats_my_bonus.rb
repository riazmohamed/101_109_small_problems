# whats_my_bonus?

def calculate_bonus(salary, true_false)
  bonus = 0
  bonus = salary / 2 if salary && true_false
  bonus
end

puts "=========="
def calculate_bonus_1(salary, bool)
  bool ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

puts calculate_bonus_1(2800, true) == 1400
puts calculate_bonus_1(1000, false) == 0
puts calculate_bonus_1(50000, true) == 25000

# uppercase.rb

def uppercase?(str)
  str.chars.all? {|element| element == element.upcase }
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# given solution
def uppercase?(str)
  str == str.upcase
end

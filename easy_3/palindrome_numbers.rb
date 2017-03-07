# palindrome_numbers.rb

def palindromic_number?(num)
  number = num.to_s
  number == number.reverse
end

# examples
p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)

# ANSWERS
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# palindrome.rb
require = 'pry'

def palindrome?(characters)
  characters == characters.reverse
end
# example
p palindrome?('madam') # == true
p palindrome?('Madam') # == false          # (case matters)
p palindrome?("madam i'm adam") # == false # (all characters matter)
p palindrome?('356653') # == true

# palindrome2.rb

def real_palindrome?(characters_only)
  new_char = []
  new_str = ''

  a_z = []
  ('a'..'z').each { |letter| a_z << letter }
  ('A'..'Z').each { |letter| a_z << letter }

  characters_only.chars.each do |char|
    if a_z.include?(char)
      new_char << char
    end
  end

  new_str = new_char.join.upcase
  new_str == new_str.reverse
end

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')

# Examples
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

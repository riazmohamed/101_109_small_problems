# double_consonants.rb

def double_consonants(str)
  arr = []
  ('a'..'z').each {|alph| arr << alph}
  arr = arr - %w(a e i o u)

  str_arr = str.chars
  str_arr_cache = []

  str_arr.each do |letter|
    arr.include?(letter.downcase) ? str_arr_cache << letter * 2 : str_arr_cache << letter
  end

  str_arr_cache.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# givenn solution
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

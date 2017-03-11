# swapcase.rb

# My solution
def swapcase(str)
  lowercase = []
  uppercase = []
  ("a".."z").each { |alph| lowercase << alph }
  ("A".."Z").each { |alph| uppercase << alph }

  arr = str.chars
  arr.each_with_index do |letter, index|
    if lowercase.include?(letter)
      lowercase_idx = lowercase.find_index(letter)
      arr[index] = uppercase[lowercase_idx]
    elsif uppercase.include?(letter)
      uppercase_idx = uppercase.find_index(letter)
      arr[index] = lowercase[uppercase_idx]
    else
      letter
    end
  end
  arr.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# given solution
def swapcase1(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/ # using regex for pattern matching in a string
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase1('CamelCase') == 'cAMELcASE'
p swapcase1('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

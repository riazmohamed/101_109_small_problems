# short_long_short.rb

def short_long_short(string1, string2)
  if string1.length > string2.length
    "#{string2}" + "#{string1}" + "#{string2}"
  elsif string2.length > string1.length
    "#{string1}" + "#{string2}" + "#{string1}"
  end
end

# example
p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# given solution
# def short_long_short(string1, string2)
#   arr = [string1, string2].sort_by { |el| el.length }
#   arr.first + arr.last + arr.first
# end

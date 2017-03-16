# word_to_digit.rb

HSH = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four'=> '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}

# option 1
def word_to_digit1(str)
  str.split.map! { |word| HSH.has_key?(word) ? word = HSH[word] : word }.join(" ")
end
# the above solution fails at "four."
# this can be rectified by using pattern matching as shown below

# option 2
# def word_to_digit(words)
#   HSH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, HSH[word])
#   end
#   words
# end
#
# p word_to_digit('Please call me at five five five one two three four. Thanks.')

def word_to_digit(words)
  HSH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, HSH[word])
  end
  words
end
p word_to_digit('Please call me at five five five one two three four. Thanks.')

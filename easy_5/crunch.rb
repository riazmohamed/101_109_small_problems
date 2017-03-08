# crunch.rb

puts "======= option 1 ======="
def crunch(word_string)
  arr = []
  # new_arr.map { |word| word.chars.uniq.join }.join(" ")
  word_string.chars.each { |word| arr << word if word != arr.last }
  arr.join
end

puts "======= option 2 ======="
def crunch1(string)
  string.squeeze
end

puts "======= (given)option 3 ======="
def crunch2(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')

p crunch1('ddaaiillyy ddoouubbllee')
p crunch1('4444abcabccba')
p crunch1('ggggggggggggggg')
p crunch1('a')
p crunch1('')

p crunch2('ddaaiillyy ddoouubbllee')
p crunch2('4444abcabccba')
p crunch2('ggggggggggggggg')
p crunch2('a')
p crunch2('')
=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

Examples:

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
=end

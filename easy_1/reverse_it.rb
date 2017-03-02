# reverse_it.rb

require 'pry'

def reverse_sentence(sentence)
  sentence.split.reverse!.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

puts "=============="

# option 2
def reverse_sent(sentence)
  sentence = sentence.split
  new_arr = []

  counter = sentence.size
  loop do
    if counter == 0
      new_arr << sentence[0]
      break
    end

    counter -= 1
    current_word = sentence[counter]
    new_arr << current_word
    break if new_arr.size == sentence.size
  end

  new_arr.join(" ")
end

puts reverse_sent('') == ''
puts reverse_sent('Hello World') == 'World Hello'
puts reverse_sent('Reverse these words') == 'words these Reverse'

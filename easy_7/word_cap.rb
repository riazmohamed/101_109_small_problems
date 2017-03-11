# word_cap.rb

# option 1
def word_cap(sentence)
  hsh = {}
  keys = []
  values = []
  ("a".."z").each { |alph| keys << alph }
  ("A".."Z").each { |alph| values << alph }
  keys.each_with_index { |alph, idx| hsh[alph] = values[idx] }

  result = sentence.split.each do |words|
    keys.include?(words[0]) ? words[0] = hsh[words[0]] : words[0]
  end

  counter = 0
  loop do
    current_word = result[counter]

    inner_counter = 1
    current_letter = ""
    loop do
      current_letter = current_word[inner_counter]

      if hsh.has_value?(current_letter)
        value_index = values.find_index(current_letter)
        lowercase = keys[value_index]
        current_word[inner_counter] = lowercase
        inner_counter += 1
      else
        inner_counter += 1
      end

      break if inner_counter == current_word.length
    end

    counter += 1
    break if counter == result.size
  end

  result.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# option 2
def word_cap1(words)
  words.split.map(&:capitalize).join(" ")
end

p word_cap1('four score and seven') == 'Four Score And Seven'
p word_cap1('the javaScript language') == 'The Javascript Language'
p word_cap1('this is a "quoted" word') == 'This Is A "quoted" Word'

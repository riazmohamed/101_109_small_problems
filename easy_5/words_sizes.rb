# words_sizes.rb

def word_sizes(sentence)
  hsh = {}
  arr = sentence.chars.select { |char| char == " " || ("a".."z").include?(char.downcase) }.join.split
  arr.each do |word|
    key = word.size
    hsh.has_key?(key) ? hsh[key] += 1 : hsh[key] = 1
  end

  hsh
end

# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# option 2
def word_sizes(sentence)
  counter = Hash.new(0)
  arr = sentence.chars.select { |char| char == " " || ("a".."z").include?(char.downcase) }.join.split

  arr.each {|word| counter[word.size] += 1}
  counter
end

# given solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
en

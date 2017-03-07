# swap.rb

# option 1
def swap(sentence)
  result = sentence.split(' ').each do |word|
            a = word[0]
            b = word[-1]
            word[0] = b
            word[-1] = a
          end
  result.join(' ')
end

# Examples:

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# option 2
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

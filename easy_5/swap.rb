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

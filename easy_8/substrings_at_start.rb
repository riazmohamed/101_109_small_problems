# substrings_at_start.rb

def substrings_at_start(str)
  arr1 = []
  str.chars.each_with_index do |letter, index|
    arr1.empty? ? arr1 << letter : arr1 << arr1[index - 1] + letter
  end
  arr1
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# best solution
def substr(str)
  str.size <= 1 ? [str] : [*substr(str.chop), str]
end

p substr('abc')
p substr('a')
p substr('xyzzy')

# Recursively chopping the last character and the * unpacks the multidimensional array into one dimensional array.

# repeater.rb

def repeater(str)
  str.chars.zip(str.chars).flatten.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# best answer
def repeater(str)
  [str.chars, str.chars].transpose.join
end

def repeater(str)
  Array.new(2, str.chars).transpose.join
end

def repeater(str)
  str.gsub(/./, '\0\0')
end

def repeater(str)
  str.gsub(/./) { |c| c * 2 }
end

def repeater(str)
  str.chars.reduce('') { |result, char| result + char + char }
end

def repeater(str)
  str.chars.map {|c| c * 2}.join
end

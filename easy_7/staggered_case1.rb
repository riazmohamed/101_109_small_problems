# staggered_case1.rb

# my solution
def staggered_case1(str)
  arr = []
  ("a".."z").each { |alph| arr << alph }
  ("A".."Z").each { |alph| arr << alph }

  result = str.chars
  index = 1
  counter = 0

  loop do
    current_letter = result[counter]
    if arr.include?(current_letter) && index.odd?
      current_letter.upcase!
      counter += 1
      index += 1
    elsif arr.include?(current_letter) && index.even?
      current_letter.downcase!
      counter += 1
      index += 1
    else
      counter += 1
    end

    break if counter == str.length
  end

  result.join
end

p staggered_case1('I Love Launch School!')
p staggered_case1('ALL CAPS')
p staggered_case1('ignore 77 the 444 numbers')

# given solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

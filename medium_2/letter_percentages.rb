# letter_percentages.rb

def letter_percentages(string)
  upper = *('A'..'Z')
  lower = *('a'..'z')
  counter = Hash.new(0)

  string.chars.each do |letter|
    counter[:lowercase] += ((lower.count(letter) / string.length.to_f) * 100)
    counter[:uppercase] += ((upper.count(letter)/ string.length.to_f) * 100)
  end

  counter[:neither] = 100 - (counter[:uppercase] + counter[:lowercase])
  counter
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')

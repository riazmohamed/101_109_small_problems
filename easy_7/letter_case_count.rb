# letter_case_count.rb

def letter_case_count(word_string)
  counter = { lowercase: 0, uppercase: 0, neither: 0 }
  
  word_string.chars.each do |letter|
    if ('a'..'z').include?(letter)
      counter[:lowercase] += 1
    elsif ('A'..'Z').include?(letter)
      counter[:uppercase] += 1
    else
      counter[:neither] += 1
    end
  end
  counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

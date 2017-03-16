# featured.rb

def featured(number)
  
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split("")
    return number if number_chars.uniq == number_chars
    number += 14 # this is done here so that the returned number is not an even number eg. 7 + 7 = 14 but 7 + 14 = 21
    # since number before the loop starts will always be odd += 14 ensures that the returned value will always be odd too.
  end
end

p featured(12)
p featured(20)
p featured(21)
p featured(997)
p featured(1029)
p featured(999_999)
# p featured(999_999_987)

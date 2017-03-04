# what_century.rb

def century(year)
  mod = year % 100
  detect_century = mod == 0 ? year / 100 : (year / 100) + 1

  suffix = ''
  last_digit = detect_century % 10
  suffix = case last_digit
           when 1 then 'st'
           when 2 then 'nd'
           when 3 then 'rd'
           else 'th'
           end

  suffix = 'th' if [11, 12, 13].include?(detect_century % 100) 

  detect_century.to_s << suffix
end

# examples

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)

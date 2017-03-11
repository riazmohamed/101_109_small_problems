# staggered_case.rb

def staggered_case(str)
  result = str.chars

  result.each_with_index do |letter, index|
    index.even? ? letter.upcase! : letter.downcase!
  end
  result.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

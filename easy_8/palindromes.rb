# palindromes.rb

def substrings(str)
  counter = 0
  result = []
  arr = str.chars

  result = add_elements(arr)

  loop do
    arr.shift
    result += add_elements(arr)

    break if arr.size == 1
  end
  result
end

def add_elements(arr)
  counter = 0
  new_arr = []
  loop do
    current_element = arr[counter]
    new_arr.empty? ? new_arr << current_element : new_arr << new_arr[counter - 1] + current_element

    counter += 1
    break if counter == arr.size
  end
  new_arr
end

def palindromes(string)
  result = []
  all_substring = substrings(string)
  all_substring.each do |str|
    result << str if palindrome?(str)
  end
  result
end

def palindrome?(string)
  string == string.reverse && string.length > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

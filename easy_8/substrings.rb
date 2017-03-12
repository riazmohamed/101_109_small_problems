# substrings.rb

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

p substrings('abcde')

# given solution
def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0..string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

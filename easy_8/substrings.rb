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

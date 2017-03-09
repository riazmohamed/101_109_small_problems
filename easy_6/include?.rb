# include?.rb

# option 1
def include?(arr, element)
  !!arr.find_index(element)
end

# option 2
def include?(arr, element)
  arr.any? { |ele| ele == element }
end

# option 3
def include?(arr, element)
  arr.each { |ele| return true if ele == element }
  false
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)

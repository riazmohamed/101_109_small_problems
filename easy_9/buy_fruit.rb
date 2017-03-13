# buy_fruit.rb

def buy_fruit(arr)
  arr.map { |fruit, num| [fruit] * num }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

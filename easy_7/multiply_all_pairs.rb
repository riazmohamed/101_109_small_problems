# multiply_all_pairs.rb

# my solution
def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |a, b| a * b }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# given solution

def multiply_all_pairs(arr1, arr2)
  product = []

  arr1.each do |item_1|
    arr2.each do |item_2|
      product << item_1 * item_2
    end
  end
  product.sort
end

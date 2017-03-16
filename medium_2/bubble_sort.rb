# bubble_sort.rb

# my solution
def bubble_sort!(arr)
  arr.sort! { |a, b| a <=> b }
end

array = [5, 3]
p bubble_sort!(array)
array = [6, 2, 7, 1, 4]
p bubble_sort!(array)

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)

# given solution
def bubble_sort1!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end
    break unless swapped
  end
  array
end

array = [5, 3]
p bubble_sort1!(array)
array = [6, 2, 7, 1, 4]
p bubble_sort1!(array)

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort1!(array)

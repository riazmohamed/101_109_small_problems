# sequence_count.rb

def sequence_count(count, num_of_elements)
  arr = []
  loop do
    break if count <= 0

    current_element = num_of_elements * count
    arr << current_element
    count -= 1
  end

  arr.reverse
end

p sequence_count(5, 1) == [1, 2, 3, 4, 5]
p sequence_count(4, -7) == [-7, -14, -21, -28]
p sequence_count(3, 0) == [0, 0, 0]
p sequence_count(0, 1000000) == []

# given solution
def sequence_count(count, first)
  (1..count).map { |idx| idx * first }
end

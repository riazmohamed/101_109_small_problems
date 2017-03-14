# diamond.rb

def diamond(number)
  counter = 0
  arr = []
  loop do
    counter += 1
    current_element = "*" * counter
    arr << current_element if counter.odd?

    if counter == number
      arr = arr + arr[0..-2].reverse
      break
    end
  end
  arr.each do |star|
    puts star.center(number)
  end
end

diamond(1)
diamond(3)
diamond(9)

# given solution

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond1(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond1(1)
diamond1(3)
diamond1(9)

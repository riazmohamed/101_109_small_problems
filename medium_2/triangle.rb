# triangle.rb

def triangle(side_1, side_2, side_3)
  arr = [side_1, side_2, side_3]
  count_equal(arr, side_1) || count_equal(arr, side_2) || count_equal(arr, side_3)
end

def count_equal(arr, side)
  if side == 1 || side == 0
    :invalid
  elsif arr.count(side) == 1 && arr.all? {|side| side != 1}
    :scalene
  elsif arr.count(side) == 2
    :isosceles
  elsif arr.count(side) == 3
    :equilateral
  end
end

p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(0, 3, 3)
p triangle(3, 1, 1)

# given solution
def triangle1(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side2 == side3 || side3 == side1
    :isosceles
  else
    :scalene
  end
end

p triangle1(3, 3, 3)
p triangle1(3, 3, 1.5)
p triangle1(3, 4, 5)
p triangle1(0, 3, 3)
p triangle1(3, 1, 1)

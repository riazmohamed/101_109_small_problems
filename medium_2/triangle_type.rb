# triangle_type.rb

def triangle(angle_1, angle_2, angle_3)
  angles = [angle_1, angle_2, angle_3]

  case
  when angles.reduce(:+) != 180 || angles.any? {|angle| angle <= 0}
    :invalid
  when angles.all? { |angle| angle < 90 }
    :acute
  when angles.any? { |angle| angle == 90 }
    :right
  when angles.any? { |angle| angle > 90 }
    :obtuse
  end
end

p triangle(60, 70, 50)
p triangle(30, 90, 60)
p triangle(120, 50, 10)
p triangle(0, 90, 90)
p triangle(50, 50, 50)

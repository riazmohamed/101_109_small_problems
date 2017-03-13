# sequence.rb

def sequence(number)
  result = []
  1.upto(number) {|num| result << num}
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# given solution
def sequence1(num)
  (1..number).to_a
end

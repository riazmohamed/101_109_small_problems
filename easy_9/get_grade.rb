# get_grade.rb

def get_grade(grade_1, grade_2, grade_3)
  results = [grade_1, grade_2, grade_3]
  score = results.inject(:+)
  mean = score / results.size
  case
  when (91..100).include?(mean)
    'A'
  when (81..90).include?(mean)
    'B'
  when (71..80).include?(mean)
    'C'
  when (61..70).include?(mean)
    'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93)
p get_grade(50, 50, 95)

# fizzbuzz.rb

def fizzbuzz(number1, number2)
  number1.upto(number2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      puts 'FizzBuzz'
    elsif num % 3 == 0
      puts 'Fizz'
    elsif num % 5 == 0
      puts 'Buzz'
    else
      puts num
    end
  end

end

fizzbuzz(1, 15)

puts "======= option 2 ======="
def fizzbuzz1(num1, num2)
  num = num1
  loop do
    if num % 3 == 0 && num % 5 == 0
      puts 'FizzBuzz'
    elsif num % 3 == 0
      puts 'Fizz'
    elsif num % 5 == 0
      puts 'Buzz'
    else
      puts num
    end

    num += 1
    break if num > num2
  end
end

fizzbuzz1(1, 15)

puts "======= given solution ======="

def fizzbuzz2(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number).each do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(", ")
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    "FizzBuzz"
  when number % 3 == 0
    "Fizz"
  when number % 5 == 0
    "Buzz"
  else
    number
  end
end

fizzbuzz2(1, 15)

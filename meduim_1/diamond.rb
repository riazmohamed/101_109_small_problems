# diamond.rb

# def diamond(number)
#   1.upto(number) do |num|
#     spaces_count = (number - num) / 2
#     spaces = " " * spaces_count
#     string = "*" * num
#     puts "#{spaces}#{string}" if num.odd?
#   end
# end

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

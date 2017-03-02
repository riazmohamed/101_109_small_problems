# repeat_yourself.rb

# option 1
def repeat(word, iteration)
  iteration.times { |i| puts word }
end

repeat('Hello', 3)

puts "============="
# option 2

def repeat(word, iteration)
  counter = 0
  loop do
    break if counter == iteration
    puts word
    counter += 1
  end
end

repeat('Hello', 3)

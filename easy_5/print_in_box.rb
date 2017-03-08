# print_in_box.rb

def print_in_box(wrd_string)
  dash = box_details(wrd_string, "+", "-")
  space = box_details(wrd_string, "|", " ")

  puts dash.join
  puts space.join
  puts "| #{wrd_string} |"
  puts space.join
  puts dash.join
end

def box_details(wrd_string, first, second)
  box = []
  wrd_string.length.times { |n| box << second }
  box = [first, second] + box + [second, first]
end

p print_in_box('To boldly go where no one has gone before.')
p print_in_box('')
=begin
Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
=end

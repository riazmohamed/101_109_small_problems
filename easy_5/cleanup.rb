# cleanup.rb

# option 1
def cleanup(sentence)
  alphabets = []
  ('a'..'z').each { |letter| alphabets << letter }

  arr = sentence.chars
  new_arr = []

  counter = 0
  loop do
    current_obj = arr[counter]
    previous_obj = new_arr.last

    if alphabets.include?(current_obj) == false && previous_obj == " "
      counter += 1
    elsif alphabets.include?(current_obj)
      new_arr << current_obj
    else
      new_arr << " "
    end

    counter += 1
    break if counter == arr.size
  end

  new_arr.join
end

# Examples:

p cleanup("---what's my +*& line?") == ' what s my line '

# option 2
def cleanup_2(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup_2("---what's my +*& line?") == ' what s my line '

# option 3
def cleanup_3(dirty)
  clean = dirty.chars.map { |c| ("a".."z").include?(c.downcase) ? c : ' ' }
  clean.join.squeeze
end

puts cleanup_3("---what's my +*& line?") == ' what s my line '

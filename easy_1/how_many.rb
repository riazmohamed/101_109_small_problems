# how_many.rb

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# option 1
def count_occurrences(automobiles)
  output_hash = {}

  counter = 0
  loop do
    current_vehicle = automobiles[counter]
    if output_hash.has_key?(current_vehicle)
      output_hash[current_vehicle] += 1
    else
      output_hash[current_vehicle] = 1
    end

    counter += 1
    break if counter == automobiles.size
  end

  output_hash.each {|k, v| puts "#{k} => #{v}"}
end

count_occurrences(vehicles)

puts "===================="

# given option
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  occurences = {}

  array.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)

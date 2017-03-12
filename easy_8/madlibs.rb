# madlibs.rb

puts "Enter a noun: "
noun = gets.chomp
puts "Enter a verb: "
verb = gets.chomp
puts "Enter an adjective: "
adjective = gets.chomp
puts "Enter an adverb: "
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample

# best answer

def madlibs1
  noun, verb, adj, adv = %w(noun verb adjective adverb).map do |word_type|
    puts "Please enter a#{'n' if word_type[/\Aa/]} #{word_type}:"
    gets.chomp
  end
  puts format("Do you %s your %s %s %s? That's hilarious!", verb, adj, noun, adv)
end

puts madlibs1

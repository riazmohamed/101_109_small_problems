# count_characters.rb

puts "Please write word or multiple words: "
words =  gets.chomp
characters = words.delete(" ").size
puts "There are #{characters} characters in \"#{words}\"."

=begin
Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

Input: Please write word or multiple words: walk
Output: There are 4 characters in "walk".

Input: Please write word or multiple words: walk, don't run
Output: There are 13 characters in "walk, don't run".
=end

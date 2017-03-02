# greeting_user.rb

def prompt(msg)
  puts "=> #{msg}"
end

def scream?(user_name)
  if user_name[-1] == "!"
    user_name = user_name.chop
    "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?"
  else
    "Hello #{user_name}"
  end
end

prompt "What is your name?"
name = gets.chomp

puts scream?(name)

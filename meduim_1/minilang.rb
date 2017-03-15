# minilang.rb

def minilang(string)
  n = 0
  stack = []
  string.split.each do |word|
    n = word.to_i if word.to_i != 0
    case word
    when "PUSH" then stack << n
    when "ADD" then n += stack.pop
    when "SUB" then n -= stack.pop
    when "MULT" then n *= stack.pop
    when "DIV" then n /= stack.pop
    when "MOD" then n %= stack.pop
    when "POP" then n = stack.pop
    when "PRINT" then puts n
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

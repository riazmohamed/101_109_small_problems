# block_word.rb

# my solution
BLOCK = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(str)
  result = ""
  BLOCK.all? do |a, b|
    result = str.upcase.include?(a) && str.upcase.include?(b) ? false : true
  end
  result
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')

# given solution
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word1?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word1?('BATCH')
p block_word1?('BUTCH')
p block_word1?('jest')

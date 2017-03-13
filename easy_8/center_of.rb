# center_of.rb

def center_of(str)
  mid_idx = str.length / 2
  result = str.length % 2 == 0 ? str[(mid_idx - 1)..mid_idx] : str[mid_idx]
  puts result
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

# given solution
def center_of(str)
  center_index = str.length / 2
  if center_index.odd?
    str[center_index]
  else
    str[center_index - 1, 2]
  end
end

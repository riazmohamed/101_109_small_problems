# toggle_on_or_off.rb

# given solution

def toggle_on_or_off(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == 'off' ? lights[position] = 'on' : lights[position] = 'off'
      end
    end
  end
end

def lights_on(lights)
  lights.keys.select { |num| lights[num] == 'on' }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = 'off' }
toggle_on_or_off(lights)
p lights_on(lights)

# best answer
def lights(num)
  (1..num**0.5).map(&:abs2)
end

p lights(1000)

# after_midnight.rb

# my solution
def after_midnight(string)
  hour = string[0] + string[1]
  min = string[-2] + string[-1]

  hour == '24' ? hh = 0 : hh = hour.to_i
  mm = min.to_i

  total_mins = (hh * 60) + mm
end

def before_midnight(string)
  hour = string[0] + string[1]
  min = string[-2] + string[-1]

  hour == '24' ? hh = 0 : hh = hour.to_i
  mm = min.to_i

  total_mins = (hh * 60) - mm
end

# Examples:

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# given solution
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

# notes
# something.map(&:to_i) == something.map { |string| string.to_i }

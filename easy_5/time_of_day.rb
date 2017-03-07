# time_of_day.rb

# option 1 (long_version)
def time_of_day(input)

  time = {}
  min = '00'
  hour = '00'

  hh = 0
  mm = 0

  if input < 60 && input > 0
    mm = input
  elsif input < 0 && input > -60
    mm = 60 + input
    hh = 24 - 1
  elsif input > 60
    if input / 60 < 24
      hh = input / 60
      mm = input % 60
    else
      hh = (input / 60) / 24
      mm = input % 60
    end
  elsif input < -60
    hh = (input / 60) + 24 if input / 60 < -24
    hh = (input / 60) - (((input / 60)/24) * 24)
    mm = input % 60
  end

  mm = 0 if mm == 60 || mm == -60
  hh = 0 if hh == -24 || hh == 24

  if mm.to_s.size == 1
    min[1] = mm.to_s
  else
    min = mm.to_s
  end

  if hh.to_s.size == 1
    hour[1] = hh.to_s
  else
    hour = hh.to_s
  end

  "#{hour}:#{min}"
end

# examples
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# option 2 (short_version)
def time_of_day(int)
    hour = (int / 60) % 24
    minute = int % 60
    time_arr = [hour, minute].map { |x|  x.to_s.length == 1 ? "0#{x}" : x.to_s }
    "#{time_arr[0]}:#{time_arr[1]}"
end

# option 3 => given solution
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

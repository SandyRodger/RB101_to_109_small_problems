def after_midnight(time)
	total_minutes = (time[0..1].to_i * 60) + (time[3..4].to_i)
	if total_minutes == 1440 then 0
	else total_minutes
	end
end

def before_midnight(time)
	total_minutes = 1440 - ((time[0..1].to_i * 60) + (time[3..4].to_i))
	if total_minutes == 1440 then 0
	else total_minutes
	end
end

p after_midnight('00:00')# == 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0

# LS solution:

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end

p after_midnight('00:00')# == 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0
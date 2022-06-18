# problem:

# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String
# that represents that angle in degrees, minutes and seconds. 
# You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. 
# A degree has 60 minutes, while a minute has 60 seconds.

# Implicit
# Explicit
# Output
# Input

# examples:

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Data

# Algorithm

# 1.

# def minutes(float)
# 	if float.to_s.include?(".") == false
# 		then return 0
# 	end

# 	minutes = float.to_s.split(".")[-1]
	
# 	if minutes.length == 1 
# 		then return ((((minutes.to_f)/100) * 60)*10).round
# 	end

# 	if minutes.length > 2
# 		then return minutes[0,2]
# 	end
	
# output = ((minutes.to_f/100) * 60).to_i

# end

# def seconds(float)
# 	if float.to_s.include?(".") == false
# 		then return 0
# 	end

# 	minutes_and_seconds = float.to_s.split(".")[-1]
	
# 	if minutes_and_seconds.length == 1 
# 		then 
# 		return ((((minutes_and_seconds.to_f)/100) * 60)*10).to_i[-1]
# 	end

# 	if minutes_and_seconds.length == 2
# 		then return ((((minutes_and_seconds.to_f)/100) * 60)*10).to_s.split[-1]
# 	end
	
# output = ((minutes_and_seconds.to_f/100) * 60).to_i
# end

def formatter(int) 
length = int.to_s.length

	case length
	when 2
		int
	when 1 
		then int.to_s.prepend('0')
	else
		int.to_s[0,2]
	end
end

def degrees(float)
	"#{float.to_i}°"
end

def minutes(number)

	if number.to_s.include?(".") == false
		then return "#{formatter(0)}\'"
	end
		
	decimal_digits = number - number.floor
	minutes = (decimal_digits * 60)
	"#{formatter(minutes.floor)}\'"

end

def seconds(number)

	if number.to_s.include?(".") == false
				then return "#{formatter(0)}\""
	end
		
	decimal_digits = number - number.floor
	minutes = (decimal_digits * 60)
	seconds = (minutes - minutes.floor) * 60

	"#{formatter(seconds.floor)}\""

end

def dms(number)
	"#{degrees(number)}#{minutes(number)}#{seconds(number)}"
end

p dms(30)           ==  %(30°00'00")
p dms(76.73)        == %(76°43'48")
p dms(254.6)        == %(254°36'00")
p dms(93.034773)    == %(93°02'05")
p dms(0)            == %(0°00'00")
p dms(360)          == %(360°00'00") || dms(360) == %(0°00'00")
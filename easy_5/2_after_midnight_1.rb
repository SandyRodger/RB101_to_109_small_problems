# 2 RB101-RB109 - Small ProblemsEasy: After Midnight (Part 1)

# Problem

# Explicit requirements: May not use 'Time' or 'Date' classes
# 												Disregard Daylight Savings and Standard Time and other complications.
# implicit requirements: Method must be able to take signs.
# Input: time as minute-based format (signed integer) ie. 35
# output: time as hh:mm (string) ie "04:53"

# Example

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# Data/Algorithm

# 1   Use 1440 as the total number of minutes in a day
# 2   Use an 'If' statement to determine if the ineteger is minus or positive.
# 3		If it is positive, count forward from 0, if negative count back from 1440
# 4 	When total minutes have been calculated use divmod to find how many 60s fit into it.
# 5   Use bracket notation to output the hours and minutes in the correct format.


# Code

test_number = -3

def extra_day_discarder(integer)
	if integer.between?(-1440,1400)
		integer
	elsif integer < 0 then 
		m	=	integer % 1440
	else 	d, m	=	integer.divmod(1440)
	end
	m
end


p "The extra_day_discarder method with #{test_number} results in #{extra_day_discarder(test_number)}"

def total_minutes(integer)
	a_day_before_yesterday = -1440
	a_day = 1440
	
		if integer < a_day_before_yesterday then extra_day_discarder(integer)
		elsif integer > a_day then extra_day_discarder(integer)
		elsif integer < 0 then integer += a_day
		else integer
	end	
end

p "The total_minutes method with #{test_number} results in #{total_minutes(test_number)}"


def time_formatter(hours, minutes)
	if hours < 10 && minutes > 9 then "0#{hours}:#{minutes}"
	elsif minutes < 10 && hours > 9 then "#{hours}:0#{minutes}"
	elsif minutes<10 && hours<10 then "0#{hours}:0#{minutes}"
	else "#{hours}:#{minutes}"
	end
end

def time_of_day(integer)
	minutes = total_minutes(integer)
	h, m = minutes.divmod(60) 
	p "The time_formatter method is outputting: #{time_formatter(h, m)}"	
	time_formatter(h, m)
end

p "The time_of_day method with #{test_number} results in #{time_of_day(test_number)}"

p time_of_day(0)#  == "00:00"
p time_of_day(-3) # == "23:57" 
p time_of_day(35) # == "00:35"
p time_of_day(-1437)  # == "00:03" 
p time_of_day(3000) # == "02:00"
p time_of_day(800)#  == "13:20"
p time_of_day(-4231) # == "01:29"
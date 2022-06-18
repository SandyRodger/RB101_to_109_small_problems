# P:

# Write a method that returns the number of Friday the 13ths in the year given by an argument.
# You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) 
# and that it will remain in use for the foreseeable future.

# E:

# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# D/A:

#  1. Create a method called 'friday_13th' which takes an argument a year.
#  2. create a loop wbich takes each day of the year and asks if it's a friday and if it's the 13th
#  3. If both of thoe conditions are met then we add 1 to our counter.
#  4. Output our counter


# C:
 
require 'date'

def friday_13th(year)
	month = 1
	fridays = 0
	loop do 
		if Date.new(year, month, 13).friday? 
		 	fridays += 1
		end
			 month += 1
			 break if month == 13
		end
	fridays
end

# LS solution:

# require 'date'

# def friday_13th(year)
#   unlucky_count = 0
#   thirteenth = Date.civil(year, 1, 13)
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

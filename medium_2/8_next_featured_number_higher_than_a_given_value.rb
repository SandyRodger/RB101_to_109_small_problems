# P:

# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, 
# and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 
# 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. 
# Return an error message if there is no next featured number.

# E:

# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# D/A:

# 1. Use a loop and a counter to count up from the number given. This number = counter
# 2. Use an if statement for counter. 
# 3. when counter.even? && counter % 7 == 0 && counter.split.uniq == counter.split then return counter

# C:

def featured(num)
	counter = num + 1
	loop do
		counter_as_array = counter.to_s.split("")
		if counter.odd? && counter % 7 == 0 && counter_as_array.uniq == counter_as_array
			 return counter
		end
	counter += 1
	end
end

# LS solution:

# def featured(number)
#   number += 1
#   number += 1 until number.odd? && number % 7 == 0

#   loop do
#     number_chars = number.to_s.split('')
#     return number if number_chars.uniq == number_chars
#     number += 14
#     break if number >= 9_876_543_210
#   end

#   'There is no possible number that fulfills those requirements.'
# end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999999987) == 1023456987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


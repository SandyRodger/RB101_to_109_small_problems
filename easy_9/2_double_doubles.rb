# P:

# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

# E:

# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# D/A:

# 1. write method 'twice' which takes 'num' as an argument.
# 2. within 'twice' use an if clause to return num if it is a double number.
# 2. a) asign num.to_s to num_as_string variable
# 2. b) compare the index of [0 .. num_as_string.length/2] to [num_as_string.length/2 .. num_as_string.length]
# 3. multiply num times 2

# C:

def twice(num)
	num_as_string = num.to_s
	length = num_as_string.length

	if length == 2 && num_as_string[0] == num_as_string[1]
		return num
	elsif	length.odd?
		return num * 2
	elsif
		num_as_string[0 .. (length/2 - 1)] == num_as_string[length/2 .. (length - 1)]
		return num
	end

	num * 2

end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

# LS solution:

# def twice(number)
#   string_number = number.to_s
#   center = string_number.size / 2
#   left_side = center.zero? ? '' : string_number[0..center - 1]
#   right_side = string_number[center..-1]

#   return number if left_side == right_side
#   return number * 2
# end
# D/A:
#  		1.take first number of the integer and put it on the end of the number.
# 		 2. take second number of integer and put it on the end of the number.

def rotate_rightmost_digits(int_1, int_2) 
	string_num_array = int_1.to_s.chars
	string_num_array << string_num_array.slice!(-int_2)
	string_num_array.join("").to_i
end

def max_rotation(num)
	num_length = num.to_s.size
	counter = num_length

	loop do
		num = rotate_rightmost_digits(num, counter)
		counter -= 1
		break if counter <= 0
	end

num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# LS solution:

# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#     number = rotate_rightmost_digits(number, n)
#   end
#   number
# end
# P:

# Write a method that computes the difference between the square of 
# the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# E:

# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# D/A:

# 1. calculate the square of the sum of n positive integers. This will be done in a helper method
# 1. a) use a counter and a loop to add the numbers to an empty array.
# 1. b) use array.sum to add the nums together and then square that figure.
# 2. calculate the sum of the square of n positive integers. This will be done in a helper method
# 2.a) use a counter and a loop to square the number and add it to an empty array.
# 3. subtract the second value from the first value and return it.

# C:

def square_of_sum(num)
	new_arr = [0]
	loop do
		new_arr << (new_arr[-1] + 1)
		break if new_arr.count > num
	end
	(new_arr.sum)**2
end

#  p square_of_sum(5)

def sum_of_square(num)
	counter = 0
	new_arr = [0]
	loop do 
		new_arr << (counter +=1)**2
		break if counter >= num
	end
	new_arr.sum
end

 #p sum_of_square(1)

def sum_square_difference(num)
	square_of_sum(num) - sum_of_square(num)
end

 p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

# LS solution:

# def sum_square_difference(n)
#   sum = 0
#   sum_of_squares = 0

#   1.upto(n) do |value|
#     sum += value
#     sum_of_squares += value**2
#   end

#   sum**2 - sum_of_squares
# end
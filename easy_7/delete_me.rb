# Write a method that can rotate the last n digits of a number. For example:
# Explicit: Use a method, which will take 2 arguments, both numbers

# Implicit:	 

# Input: a longer integer and a shorter integer to dictate how many of the last digits needs to be rotated

# Output: an integer

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# Data/Algorithm:

# 1. create a method called rotate_rightmost_digits which takes 2 integers as arguments named int_1 and int_2
# 2. within the method call #to_s method on int_1 and assign it to to a new variable, 'int_as_string'
# 3. access the index of int_as_string using square brackets to create a range of -int_2 to -1]
# 4. Assign these numbers to a new variable, num_to_rotate
# 5. call #reverse on num_to_rotate.
# 6. use #pop with an argument of int_2 to remove the last integers from int_1
# 7. Use a concatenator operator to add num_to_rotate to int_1.

def rotate_rightmost_digits(int_1, int_2) 
	string_num_array = int_1.to_s.chars
	string_num_array << string_num_array.slice!(-int_2)
	string_num_array.join("").to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
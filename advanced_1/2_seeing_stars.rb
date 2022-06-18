# P:

# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. 
# The smallest such star you need to handle is a 7x7 grid.

# E:

# star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

# D/A:

# 1. figure out how many stars are in each line.
# a) each line has only 3 stars with the exception of the middle line which has n stars.
# 2. figure out how many spaces are in each line
# a) line one has '*' spaces '*' spaces '*'. So it will be (n - 3) / 2.
# b) line 2 will have 1 space then '*' etc. So I will work with variables spaces_1, spaces_2 and use each once or twice in a line.
# 3. output the correct number of lines.

# C:

def star(num)
	spaces_1 = ((num - 3)/2)
	spaces_2 = 1
	counter = 0
	puts '*' + (' ' * spaces_1) + '*' + (' ' * spaces_1) + '*'
	 loop do 
			spaces_1 -= 1
			puts (' ' * spaces_2) + '*' + (' ' * spaces_1) + '*' + (' ' * spaces_1) + '*' + (' ' * spaces_2)
			spaces_2 += 1
			break if spaces_1 <= 0
	 end
	puts '*' * num

		spaces_2 -= 1
		puts (' ' * spaces_2) + '***' + (' ' * spaces_2)
		spaces_1 += 2
		spaces_2 -= 2
		puts (' ' * spaces_1) + '*' + (' ' * spaces_2) + '*' + (' ' * spaces_2) + '*' + (' ' * spaces_1)
		loop do
			spaces_1 -=1
			spaces_2 += 1
			puts (' ' * spaces_1) + '*' + (' ' * spaces_2) + '*' + (' ' * spaces_2) + '*' + (' ' * spaces_1)
			break if spaces_1 <= 0
	   end
end

star(7)

# LS solution:

# def print_row(grid_size, distance_from_center)
#   number_of_spaces = distance_from_center - 1
#   spaces = ' ' * number_of_spaces
#   output = Array.new(3, '*').join(spaces)
#   puts output.center(grid_size)
# end

# def star(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(1) { |distance| print_row(grid_size, distance) }
#   puts '*' * grid_size
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end
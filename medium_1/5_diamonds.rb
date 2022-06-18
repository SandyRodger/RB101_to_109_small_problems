# P: Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# E:
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# D/A:

# 1. Define a method called 'diamond' which takes an integer, 'num',  as an argument.
# 2. Within the diamond method call a loop.
# 3. within the loop use puts to output a string that has the length of 'num' which is all spaces except for the central character, which is an asterisk.
# 4. In the next iteration of the loop the string has 2 more asterisks though the string remains the same length. This continues until the whole line is asterisks.
# 4.5. This will be done by initializing 2 variables for the spaces and asterisks that comprise the string.
#   Three counters will be used to increase/decrease the length of these strings and determine the break clause.
# 5. Then the process is reversed by breaking out of the loop and using another loop to reverse the first loop and create the bottom half of the diamond.

# C:

def diamond(num)
	space_counter = num/2
	asterisk_counter = 1
  space = " "
  asterisks = "*"

	puts "#{space * space_counter}#{asterisks * asterisk_counter}#{space * space_counter}"

	loop do
		space_counter -= 1
		asterisk_counter += 2
		puts "#{space * space_counter}#{asterisks * asterisk_counter}#{space * space_counter}"
		break if asterisk_counter == num
	end


	loop do 
		space_counter += 1
		asterisk_counter -= 2
		puts "#{space * space_counter}#{asterisks * asterisk_counter}#{space * space_counter}"
		break if space_counter == num/2
		end

end

diamond(21)
# P: Write a method that will take a short line of text, and print it within a box.

# Explicit requirements: You may assume that the input will always fit in your terminal window.

# Implicit requirements: There are no quotation marks - is the output not a string then?!

# E:

# print_in_box('To boldly go where no one has gone before.')

# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# D:  Strings, .size method

# A: 

# 1. define print_in_box to take a single string
# 2. Create 5 variables within the method for the 5 lines to be output
# 3. line_1 = 

# C:

def lines_1_and_5(string)
	'+' + ('-' * (string.length + 4)) + "+"
end


def text_line(string)
	'|  ' + string + '  |'
end


def lines_2_and_4(string)
	'|' + (' ' * (string.length + 4)) + "|"
end

def print_in_box(string)
	puts lines_1_and_5(string)
	puts lines_2_and_4(string)
	puts text_line(string)
	puts lines_2_and_4(string)
	puts lines_1_and_5(string)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# LS solution:

# def print_in_box(message)
# 	horizontal_rule = "+#{'-' * (message.size + 2)}+"
# 	empty_line = "|#{' ' * (message.size + 2)}|"

# 	puts horizontal_rule
# 	puts empty_line
# 	puts "| #{message} |"
# 	puts empty_line
# 	puts horizontal_rule
# end
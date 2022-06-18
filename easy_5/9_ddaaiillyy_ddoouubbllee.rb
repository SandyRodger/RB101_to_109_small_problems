# P : Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters 
# collapsed into a single character. You may not use String.squeeze or String.squeeze!.

# Explicit:  	Takes a string.
# 						Returns a new_string containing the original strings content without duplicates.
# 						.Squeeze(!) is forbidden.

# Implicit: the string can contain numbers, lettters, spaces - I will assume no punctuation as there is none in the examples
# 					the string can be empty and will return an empty string. 

# Input a string as specified above

# Output : a string as specified above



# E : crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# D : strings. I guess I will itereate over the string an concatenate acceptable input into a second array.
# 					I might use duplicate

# A :  1. def crunch to take one argument, called 'string'
# 			1.a. initialize new_string as an empty string
# 			1.b. initialise a counter = 0
# 		 2. pass the string to each_char and pass that to a block with the elements idx and letter
# 		 3. concatenate the letter into new_string unless string[counter] == string[counter+1]

# C : 

def crunch(string)

	new_string = ''
	counter = 0

	loop do
		break if string.empty?
		new_string << string[counter] unless string[counter] == string[counter + 1]
		counter += 1
		break if counter == string.size
	end

	new_string

end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# LS solution:  Same as mine!

# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end
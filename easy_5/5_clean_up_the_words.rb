require 'pry'

# PEDAC:

# problem:

# Explicit requirements: 
# Use a method
# input = a string of lowercase letters, spaces and non-alphabetic characters
# output = a string in which non_alphabetic characters are replaces by spaces, unless there are more than one consecutively, in which case only one space should be output.	

# Implicit requirements:
# The method should take 1 argument
# The method should outcome 1 string
	
# examples:

# cleanup("---what's my +*& line?") == ' what s my line '

# data

# I might use multiple methods which deal with an alphabet variable and the string in seperate loops. 

# I could use a for loop, or each_char method.

# Or I could turn the string into as array with .split and then use .map

# algorithm

# 1. Write a method called 'cleanup' which takes a string. 

#  -initialise an empty array called 'new_array'

#  - split the string into an array.

# 2. iterate over the array using .select with a block to find which characters are letters, which are non-alphabetic characters and which are spaces

# eg: a.select {|v| v =~ /[aeiou]/ }    #=> ["a", "e"]

# 3. The block will contain 2 if clauses for 

# a) If the character is a non-alphabetic character insert a space into a 'new_array' variable
# b) If the character is of the alphabet or is a space then insert that character into the new_array.
		
# 4. use new_array.join to create clumps of characters that are seperated by a single space.

# 5. this will be the final line of the method and so will be returned.

# code:

def cleanup(string)
	new_array = []
	string_as_array = string.split("")
	string_as_array.each do |char|
	if char =~ /[abcdefghijklmnopqrstuvwxyz ]/
		new_array << char
	else new_array << " " 
	end
end
new_array.join("").squeeze(" ")
end



p cleanup("---what's my +*& line?") == ' what s my line '	

# note: This took me about 4 hours to work through. There must be something wrong with my problem solving method. I can't be taking this long.

LS solution 1:

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

LS solution 2:

def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

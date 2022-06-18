# Problem:

# Explicit requirements: 
# Write a method that takes a string with one or more space separated words
# returns a hash that shows the number of words of different sizes.
# Words consist of any string of characters that do not include a space.

# Implicit requirements:
# a string will be converted into a hash, or a new hash will be created
# the key will represent the length of the word and the value will represent how many of this length of word there is in the original string.

# Examples:

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# D

# We will be using strings and hashes

# A

# 1. define a method called 'word_sizes' which takes a single argument, called 'string'
# 1.5. Initialise a new empty hash called 'New_hash'.	
# 2. use .split(" ") to turn the string into an array, assign this to a new variable called 'string_as_array'
# 3. Use string_as_array.count

# C

def word_sizes(string)
	new_hash = {}
	string_as_array = string.split(" ")

	string_as_array.each do|word|
		 new_hash [word.length] = string_as_array.count {|x| x.length == word.length}
	end

	new_hash

end

# LS solution:

# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     counts[word.size] += 1
#   end
#   counts
# end

p word_sizes('Four score and seven.') # == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') # == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") # == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') # == {}
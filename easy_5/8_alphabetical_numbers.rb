# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# P

# Input: An array of integers between 1 and 19
# Output: An array of integers between 1 and 19
# Explicit requirements: Write a method
# 												which takes an array of integers between 0 and 19
# 												and returns an array of integers organised by alphabetical order.
# Implicit requirements: The output shuld have the same number of integers as the input, but need not be the same object.


# E

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# D

# Arrays, loops

# A	

# 1. initiate a hash with the numbers as keys and the words of those numbers as values. (there may be a shorthand way of doing this with 2 dots, but I dont know it)
# 2. write a method called alphabetic_number_sort which takes one argument called array.
# 2.5. Initiate an empty array called 'words_array'

# 3. Call a second method called 'numbers_to_words_converter'
# 4. Within the 'numbers_to_words_converter' begin a loop.
# 4. Within the loop iterate over the hash to find the corresponding word.
# 5. This word should be concatenated into the 'words_array'
# 6. end method.

# 7. within the first method use a spaceship operator to compare the 0th index of each item in the words array.
# 8. end


# C

	def alphabetic_number_sort(array)

	numbers_hash = {	
		0 => "zero",
		1 => "one",
		2 => "two",
		3 => "three",
		4 => "four",
		5 => "five",
		6 => "six",
		7 => "seven",
		8 => "eight",
		9 => "nine",
		10 => "ten",
		11 => "eleven",
		12 => "twelve",
		13 => "thirteen",
		14 => "fourteen",
		15 => "fifteen",
		16 => "sixteen",
		17 => "seventeen", 
		18 => "eighteen",
		19 => "nineteen"
		}

	word_array = numbers_to_words_converter(numbers_hash, array)
	ordered_array = put_in_alphabetical_order(word_array)
	words_to_numbers_converter(ordered_array, numbers_hash)
end

def numbers_to_words_converter(hash, array)
	array.map do |num|
		hash.values_at(num)
	end
end

def words_to_numbers_converter(array, hash)

 	array.flatten!
	new_array = []
	counter = 0

	loop do
	case array[counter]
		when "zero"
			new_array << 0
		when "one"
			new_array << 1
		when "two"
			new_array << 2
		when "three"
			new_array << 3
		when "four"
			new_array << 4
		when "five"
			new_array << 5
		when "six"
			new_array << 6
		when "seven"
			new_array << 7
		when "eight"
			new_array << 8
		when "nine"
			new_array << 9
		when "ten"
			new_array << 10
		when "eleven"
			new_array << 11
		when "twelve"
			new_array << 12
		when "thirteen"
			new_array << 13
		when "fourteen"
			new_array << 14
		when "fifteen"
			new_array << 15
		when "sixteen"
			new_array << 16
		when "seventeen"
			new_array << 17
		when "eighteen"
			new_array << 18
		when "nineteen"
			new_array << 19
	end
counter+=1
break if counter >= array.size
end
	new_array
end

def put_in_alphabetical_order(array)
	array.sort! {|first_word, second_word|
		first_word[0] <=> second_word[0]}
end


p alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

# LS solution: 


# NUMBER_WORDS = %w(zero one two three four
# five six seven eight nine
# ten eleven twelve thirteen fourteen
# fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
# numbers.sort_by { |number| NUMBER_WORDS[number] }
# end

# p alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
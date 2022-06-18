# P: 

# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments,
# with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# E:

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# D/A:

# C:

def interleave(array_1, array_2)
	new_array = []

	loop do
		new_array << array_1.shift
		new_array << array_2.shift
		break if array_1.empty?
	end

	new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# LS solution:

# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end

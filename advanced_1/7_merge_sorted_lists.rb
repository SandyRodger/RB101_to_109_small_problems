# P:Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# * OUtput must be a new_array
# * input array must not be mutated by the method.

# E:

# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]

# D/A:

# 1. initialize an empty array, 'output_array'
# 2. use the array.each method to iterate over both sub-arrays. 
# 3. within the array.each method use array.map to shovel the numbers into output_array
# loop and counter
# 4. Sort the output_array by using the array.min method to shovel the lowest value into the output_array
# 5. print previosu step. 

# Code:

# def merge(array_1, array_2)
# 	total_array = []
# 	output_array = []
# 	array_1.each {|num| total_array << num}
# 	array_2.each {|num| total_array << num}
# 	counter = 1

# 	loop do
# 		total_array.each do |i|
# 			if i == counter
# 				output_array << i
# 			end
# 		end
# 		counter += 1
# 		break if counter > total_array.max
# 	end
# 	output_array
# end

# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]

# LS solution:

# def merge(array1, array2)
#   index2 = 0
#   result = []

#   array1.each do |value|
#     while index2 < array2.size && array2[index2] <= value
#       result << array2[index2]
#       index2 += 1
#     end
#     result << value
#   end

#   result.concat(array2[index2..-1])
# end

# p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]

def merge(array)
	result = []
	counter = 0
	counter_2 = -1
	loop do
		result[counter] << array[counter].shift
		break if array.empty? 	
		result[counter_2] << array[counter].pop
		break if array.empty? 
	end
	result
end


 p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]
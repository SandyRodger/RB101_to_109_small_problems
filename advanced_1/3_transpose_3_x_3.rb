# P:

# A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array and all of the sub-Arrays has 3 elements.

# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. 
# Note that there is a Array.transpose method that does this -- you may not use it for this exercise. 
# You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

# E:

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# D/A:

# 1. Initialise an empty array called new_matrix
# 2. Pass the matrix into the method transpose.
# 2.b) initialise a counter equalling 0.
# 3. Within transpose use .each to access each array.
# 4. Shovel the first element of each nested array into new_matrix. Use the counter to access the correct index.
# 4. break when the counter == new_matrix.count.

# C:


matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

def transpose(array)
	new_matrix = [[],[],[]]
	counter = 0
	loop do
		array.each do |nested_arr|
			new_matrix[counter] << nested_arr[counter]
		end
		counter += 1
		break if counter == array.count
	end
 new_matrix
end

p  transpose(matrix)
 p matrix

 #LS solution:

#  def transpose(matrix)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end
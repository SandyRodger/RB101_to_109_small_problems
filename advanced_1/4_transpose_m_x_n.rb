# P:

# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as represented by a ruby Array of Arrays.

# Matrix transposes aren-t limited to 3 x 3 matrices, or even square matrices. Any matrix can be transposed by simply switching columns with rows.

# Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.


# E:

# transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# transpose([[1]]) == [[1]]

# D/A:

# 1. Find out and store in a variable the 'original_number of rows'.
# 2. Find out and store in a variable the 'original_number_of_columns'.
# 3. Iterate over the input_array so that it refers to the first value of each sub-array and populates a sub-array of output_array with it.
# 4. 
# 5. 
# 6. 
# 7  

# # C:

def transpose(matrix)
	original_n_rows = matrix.count
	original_n_columns = matrix[0].count
  result = []
  (0..(original_n_columns-1)).each do |column_index|
    new_row = (0..(original_n_rows-1)).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

# LS solution: same as mine:

# def transpose(matrix)
#   result = []
#   number_of_rows = matrix.size
#   number_of_columns = matrix.first.size
#   (0...number_of_columns).each do |column_index|
#     new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

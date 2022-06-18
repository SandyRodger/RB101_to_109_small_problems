def rotate90(matrix)
	original_n_rows = matrix.count # => 3
	original_n_columns = matrix[0].count # => 3
	counter = original_n_rows
	reversed_index = []

		loop do
			counter -= 1
			reversed_index << counter
			break if counter == 0
		end

  result = []
	
  	(0..(original_n_columns-1)).each do |column_index|
    new_row = reversed_index.map { |row_index| matrix[row_index][column_index] }
    result << new_row
	end
  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1  == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2  == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
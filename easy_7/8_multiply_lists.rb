def multiply_list(arr_1, arr_2)
	new_arr = []
	counter = 0
	
		loop do
			new_arr << arr_1[counter] * arr_2[counter]
			counter += 1
			break if counter == arr_1.count
		end

		new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# LS solution:

# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, index|
#     products << item * list_2[index]
#   end
#   products
# end
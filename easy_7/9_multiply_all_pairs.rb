def multiply_all_pairs(arr_1, arr_2)
	counter = 0
	new_arr = []

	loop do
	multiplier = arr_1[counter]
	arr_2.map {|num| new_arr << multiplier * num}
	counter += 1
	break if counter >= arr_1.count
	end

	new_arr.sort

end



p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]



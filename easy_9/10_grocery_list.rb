def buy_fruit(nested_array)
	new_arr = []

	nested_array.each do |arr|
		new_arr << [arr[0]] * arr[1]
	end

	new_arr.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


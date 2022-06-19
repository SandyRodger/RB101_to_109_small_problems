# 7

def oddities(arr)
	new_arr = []
	arr.each_with_index do |v, i|
		 if i % 2 == 0 
			new_arr << v
		 end
		end
	new_arr
	end

	array1 = [1, 5, 23, 5, 53, 3, 5]
	array2 = ['tiger', 'melon', 'sponge', 'griffin', 'ping-pong']
	p oddities(array2)

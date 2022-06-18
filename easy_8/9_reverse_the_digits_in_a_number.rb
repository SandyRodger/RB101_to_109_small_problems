def reversed_number(num)
	num_as_string = num.to_s
	counter = -1
	new_arr = []

	loop do
		new_arr << num_as_string[counter]
		counter -=1
		break if num_as_string [counter] == nil
	end

new_arr.join.to_i
end


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
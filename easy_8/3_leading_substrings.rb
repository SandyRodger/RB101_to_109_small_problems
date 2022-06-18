def leading_substrings(string)
	counter = 0
	new_arr = []

		loop do
			new_arr << string[0..counter]
			counter += 1
			break if counter == string.length
		end

	new_arr

end
	
	
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
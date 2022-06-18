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
	
def substrings(string)

	new_arr = []

		loop do
			new_arr << leading_substrings(string)
			string.delete!(string[0])
			break if string.empty?
		end

	new_arr.sort.flatten

end


p	substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]
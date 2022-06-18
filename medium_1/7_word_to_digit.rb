# P:

# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# E:

# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# C:

def word_to_digit(string)
	string_as_arr = string.split
		string_as_arr.each do |obj|
			obj.gsub!(/[^0-9A-Za-z]/, '')
		case obj
		when 'one'
			obj.replace('1')    
		when 'two'
			obj.replace(' 2')
		when 'three'
			obj.replace('3')
		when 'four'
			obj.replace('4')
		when 'five'
			obj.replace('5')
		when 'six'
			obj.replace('6')
		when 'seven'
			obj.replace('7')
		when 'eight'
			obj.replace('8')
		when 'nine'
			obj.replace('9')
		end
	end

	string_as_arr[-2] << '.'
	string_as_arr.join(" ")

end


p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
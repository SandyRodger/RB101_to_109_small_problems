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
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(string)
	new_arr = []
	array = substrings(string)
	counter = 0

		loop do
			if (array[counter] == array[counter].reverse) && (array[counter].length > 1)
					new_arr << array[counter]
				end
				counter += 1
				break if counter >= array.size
		end

	new_arr

end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p   palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes')  == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
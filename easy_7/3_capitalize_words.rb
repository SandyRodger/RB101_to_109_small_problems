def word_cap(string)
	str_as_arr = string.split

	str_as_arr.each do |word|
		word.capitalize!
	end
	
	str_as_arr.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
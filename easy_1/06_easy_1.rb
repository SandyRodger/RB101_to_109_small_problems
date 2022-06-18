
# 6 Reverse it (part 2)

def reverse_it(string)
	new_arr = []
	words_as_array = string.split(" ")
	words_as_array.map do |word|
		word_length = word.length
			if word_length > 4
				new_arr << word.reverse!
			else 
				new_arr << word
			end
		end
	new_arr.join(" ") 
end

p reverse_it("Well haven't you got a lot of runciple spoons!")

# LS solution: (Much nicer)

# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end
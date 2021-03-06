def swap(sentence)
	words_array = sentence.split(" ")
	words_array.each do |word|
		first = word[0]
		last = word[-1]
		word[0] = last
		word[-1] = first
	end
end

# LS solution:

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

p swap('Oh what a wonderful day it is') # == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') # == 'ebcdA'
p swap('a') # == 'a'
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
	'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
	'flow', 'neon']


	def alphebetize(word)
	word.split("").sort
end

def words_to_hash(array)

	hash = {}

	array.each do |word|
		if 	hash[alphebetize(word)]
			hash[alphebetize(word)] <<	word
		else
  		hash[alphebetize(word)] = [word]
		end
	end

hash

end

def anagrams(array)
	hash = words_to_hash(array)
	hash.values.each {|word_group| p word_group if word_group.count > 1}	
end

anagrams(words)


# 	["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)
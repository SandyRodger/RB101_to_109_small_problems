# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# def cleanup(string)

# 	string.gsub!("'s", 's')

# 	new_array = []
# 	string_as_array = string.downcase.split("")
# 	string_as_array.each do |char|
# 	if char =~ /[abcdefghijklmnopqrstuvwxyz ]/
# 		new_array << char
# 	else new_array << " " 
# 	end
# end
# new_array.join("").squeeze(" ")
# end

# def word_sizes(string)
# 	new_hash = {}
# 	only_alphabet = cleanup(string)
# 	string_as_array = only_alphabet.split(" ")

# 	string_as_array.each do|word|
# 		 new_hash [word.length] = string_as_array.count {|x| x.length == word.length}
# 	end

# 	new_hash

# end

# LS soulution

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
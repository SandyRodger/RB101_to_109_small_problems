# P:

# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# E:

# letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# D/A:

# 1. Define method : letter_percentages, which takes 'string' as an argument.
# 2. Define a hash with three keys: lowercase, uppercase, neither, and their values will all be 0
# 3. 

# C:

def letter_percentages(string)
	hash = {
		lowercase: 0,
		uppercase: 0,
		neither: 0 
	}

	string.each_char do |char|
		if char =~ /[A-Z]/
			hash [:uppercase] = hash [:uppercase] + 1 
		elsif char =~ /[a-z]/
			hash [:lowercase] = hash [:lowercase] + 1
		else 
			hash [:neither] = hash [:neither] + 1

		end
	end

	hash.transform_values {|v| v * 100/string.length.to_f}

end


p letter_percentages('abCdef 123')  == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }

p letter_percentages('CuTTLe 88282 Ghhh') 

# LS solution:

# def letter_percentages(string)
#   counts = {}
#   percentages = {}
#   characters = string.chars
#   length = string.length

#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)

#   percentages
# end

# def calculate(percentages, counts, length)
#   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
#   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
#   percentages[:neither] = (counts[:neither] / length.to_f) * 100
# end
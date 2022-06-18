# P:

# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

# E:

# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

# D/A:

# C:

def uppercase?(string)

	string.each_char do |char|
		if char =~ /[a-z]/ 
			return false
		end
	end

	true 

end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# LS solution:


# def uppercase?(string)
#   string == string.upcase
# end
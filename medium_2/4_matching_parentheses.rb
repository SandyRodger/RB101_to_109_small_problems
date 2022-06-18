# P:

# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. 
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# E:

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false


# D/A:
# 	1. create a method called 'balanced?' which takes a string.
# 	2. within the method call each_char on string using 'char' as an element.
# 	3. if char is '(' the += 1 to
      
# C:

def balanced?(string)
	counter = 0
  string.each_char do |char|
		if char == '('
			counter += 1
		elsif char ==')'
			counter -= 1
		break if counter < 0
		end
	end

	counter == 0
end

# LS solution:

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
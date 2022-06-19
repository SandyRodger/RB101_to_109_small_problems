
# 9 Yet again, i misread the instructions (It should have ignored all non-alphanumeric characters)

# def real_palindrome?(string)
# 	string.downcase == string.downcase.reverse
# end

# p real_palindrome?("356a653")

# LS solution:

def palindrome?(string)
	string == string.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p real_palindrome?("al---c!!lca")

# 8  LS solution exactly the same as mine

puts "enter your string here. Is it a palendrome?:"
string = gets.chomp

def palindrome?(string)
	string == string.reverse
end

p palindrome?(string)
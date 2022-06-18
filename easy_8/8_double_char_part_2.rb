def double_consonants(string)
	new_string = ""

	string.each_char do |char|
		if (char =~ /[a-z]/i) && (char =~ /[^aeiou]/i)
			new_string << char * 2
		else
			new_string << char 
		end
	end

	new_string
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
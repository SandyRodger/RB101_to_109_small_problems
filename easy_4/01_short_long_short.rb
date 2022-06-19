# 1 
def short_long_short(s1, s2)
	new_string  = ""
	case 
		when s1.length > s2.length
			new_string << s2
			new_string << s1
			new_string << s2
		when s2.length > s1.length
			new_string << s1
			new_string << s2
			new_string << s1
	end
end

p short_long_short(" ", "kiwi")

# LS solution: The instructions specified concatination, this result has no concat.

# def short_long_short(string1, string2)
#   if string1.length > string2.length
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end
# end
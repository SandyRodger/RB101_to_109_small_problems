# P: Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# E:

def vowel_strip(single_string)
	single_string.delete("aeiouAEIOU")
end


def remove_vowels(array_of_strings)

	new_array = []
	counter = 0

	loop do
		new_array << vowel_strip(array_of_strings[counter])
		counter += 1
		break if counter == array_of_strings.size
	end

	new_array 
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))  == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white))    == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ))               == ['BC', '', 'XYZ']

# LS solution:

# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end
# 7 

def string_to_integer(string_of_digits)
	string_as_array = string_of_digits.chars
	number = 0
	string_as_array.each_with_index do |char, idx|
 	case char
	 when '0' then number += 0 * (10 ** (string_of_digits.length - (idx+1)))
	 when '1' then number += 1 * (10 ** (string_of_digits.length - (idx+1)))
	 when '2' then number += 2 * (10 ** (string_of_digits.length - (idx+1)))
   when '3' then number += 3 * (10 ** (string_of_digits.length - (idx+1)))
	 when '4' then number += 4 * (10 ** (string_of_digits.length - (idx+1)))
  	when '5' then number += 5 * (10 ** (string_of_digits.length - (idx+1)))
  	when '6' then number += 6 * (10 ** (string_of_digits.length - (idx+1)))
  	when '7' then number += 7 * (10 ** (string_of_digits.length - (idx+1)))
  	when '8' then number += 8 * (10 ** (string_of_digits.length - (idx+1)))
  	when '9' then number += 9 * (10 ** (string_of_digits.length - (idx+1)))
	 end
 end
 number
end

p string_to_integer('4321') # == 4321
p string_to_integer('570') # == 570

# LS solution:

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

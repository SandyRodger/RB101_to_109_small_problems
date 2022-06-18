# 1 
# def short_long_short(s1, s2)
# 	new_string  = ""
# 	case 
# 		when s1.length > s2.length
# 			new_string << s2
# 			new_string << s1
# 			new_string << s2
# 		when s2.length > s1.length
# 			new_string << s1
# 			new_string << s2
# 			new_string << s1
# 	end
# end

# p short_long_short(" ", "kiwi")

# LS solution: The instructions specified concatination, this result has no concat.

# def short_long_short(string1, string2)
#   if string1.length > string2.length
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end
# end

# 2 What centiury is that?

# def century(year)
# 	string_year = year.to_s
# 	cent = ""
# 	case
# 	when (string_year.length == (1||2))||(year == 100)
# 		 "1st"
# 	when (string_year.length == 3) && ((string_year[0]=="1")||(year == 200))
# 		"2nd"
# 	when (string_year.length == 3) && ((string_year[0] == "2")||year == 300)
# 		"3rd"
# 	when (string_year.length == 3) && (string_year[1..2]=="00")
# 		string_year[0]<<"th"
# 	when (string_year.length == 3) 
# 		cent << string_year[0] 
# 		int_cent = cent.to_i
# 		int_cent += 1
#     int_cent.to_s<<"th"
# 	when (string_year.length == 4) && (string_year[2..3]=="00") && (string_year[0] != "2")
# 		string_year[0..1]<<"th"
# 	when (string_year.length == 4) && (string_year[0..1] != ("20"||"21"||"22"||"23"))
# 		cent << string_year[0..1] 
# 		int_cent = cent.to_i
# 		int_cent += 1
#     int_cent.to_s<<"th"
# 	when 	(string_year[0..1] == "20") || (year == 2100)
# 		"21st"
# 	when 	string_year[0..1] == "21"
# 		"22nd"
# 	when 	string_year[0..1] == "22"
# 		"23rd"
# 	when (string_year.length == 4) && (string_year[2..3]=="00")
# 		string_year[0..1]<<"th"
# 	end
# end

# p century(2100)

# LS solution: OK, I think I kmnew I was going way overboard in terms of complexity. I probably spent too long on this.

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# 3 Leap Years (part 1) LS solutiuon similar to mine

# def leap_year?(year)
# 	if (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))
# 		true
# 	else
# 		false
# 	end
# end

# p leap_year?(1752)

# 4 Leap years (part 2)

# def leap_year?(year)
# 	if year >= 1752
# 		(year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0)) ? true : false
# 	else 
# 		year % 4 == 0 ? true : false
# 	end
# end

# 5 Multiples of 3 and 5 (LS solution was 5 lines longer)

# def multisum(int)
# 	arr = []
# 	for i in 1..int
# 		if (i % 3 == 0) || (i % 5 == 0)
# 		arr << i
# 		end
# 	end
# 	arr.sum
# end

# p multisum(20)

# 6 Running totals

# arr = [2, 5, 13]

# def running_total(array)
# 	total = [] << array.shift
# 		loop do
# 			break if array.empty?
# 			total << (total[-1] + array.shift)
# 		break if array.empty?
# 		end
# 	total
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

# LS solution:

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# 7 

# def string_to_integer(string_of_digits)
# 	string_as_array = string_of_digits.chars
# 	number = 0
# 	string_as_array.each_with_index do |char, idx|
#  	case char
# 	 when '0' then number += 0 * (10 ** (string_of_digits.length - (idx+1)))
# 	 when '1' then number += 1 * (10 ** (string_of_digits.length - (idx+1)))
# 	 when '2' then number += 2 * (10 ** (string_of_digits.length - (idx+1)))
#    when '3' then number += 3 * (10 ** (string_of_digits.length - (idx+1)))
# 	 when '4' then number += 4 * (10 ** (string_of_digits.length - (idx+1)))
#   	when '5' then number += 5 * (10 ** (string_of_digits.length - (idx+1)))
#   	when '6' then number += 6 * (10 ** (string_of_digits.length - (idx+1)))
#   	when '7' then number += 7 * (10 ** (string_of_digits.length - (idx+1)))
#   	when '8' then number += 8 * (10 ** (string_of_digits.length - (idx+1)))
#   	when '9' then number += 9 * (10 ** (string_of_digits.length - (idx+1)))
# 	 end
#  end
#  number
# end

# p string_to_integer('4321') # == 4321
# p string_to_integer('570') # == 570

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

# 8 I totally failed to find the solution to this.

# LS solution:

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# 9 

# problem:

# Convert a Number to a String!
# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers.
# In this exercise and the next, you're going to reverse those methods.
# 
# Write a method that takes a positive integer or zero, and converts it to a string representation.
# 
# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. 
# Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# Example

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# Data

# Implicit requirements: I can use methods from previous exercises, copying them or using them as a reference to reverse.
# Explicit requirements: cannot use built-in-ruby shortcuts
# input: An integer.
# output: a string.

# Algorithm:

# 1. find a method that breaks down the integer into its units and pass a block into it.
# 2. in the block use the element 'n' to pass in a case instance.
# 3. Each case should 


# code: 

# DIGITS = {
#   0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
#   5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
# }

# def integer_to_string(integer)
#   digits = integer.digits.map { |num| DIGITS[num] }
# 	digits.join.reverse
# end

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(2839) == '2839'

# LS solution:

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

# p integer_to_string(4321) == '4321'

# 10

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

# def signed_integer_to_string(integer)
# 	if integer > 0 then '+' + integer.digits.reverse.join
# 	elsif integer < 0 then integer = integer.abs
# 		'-' + integer.digits.reverse.join
# 	elsif integer == 0 then '0'
# 	end
#  end

# p signed_integer_to_string(+4321) # ==  '+4321'
# p signed_integer_to_string(-123) # == '-123'
# p signed_integer_to_string(0) #  == '0'

# LS solution:

# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end



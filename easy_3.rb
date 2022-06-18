# 1 Searching 101
# arr2 = []

# def sixth_repeated(an_array)
#   sixth = an_array.pop
# 		if an_array.include?(sixth)
# 			puts "Your sixth number, #{sixth} had already been used among #{an_array[0]}, #{an_array[1]}, #{an_array[2]}, #{an_array[3]} and #{an_array[4]}."
# 		else
# 			puts "Great numbers, the sixth number had not already been entered"
# 		end
# end

# arr = []

# puts "Please enter your first number"
# arr << gets.chomp
# puts "Please enter your second number"
# arr << gets.chomp
# puts "Please enter your third number"
# arr << gets.chomp
# puts "Please enter your fourth number"
# arr << gets.chomp
# puts "Please enter your fifth number"
# arr << gets.chomp
# puts "Please enter your sixth number"
# arr << gets.chomp

# sixth_repeated(arr)

# LS soluton is largely the same except they do not use a method and the 6th number isn't stored in the array, so they don't need to pop it out.

# 2 a)

# puts "please enter your first integer:"
# first = gets.chomp.to_i

# puts "please enter your second integer:"
# second = gets.chomp.to_i

# def addition(first, second)
# 	first + second
# end

# def subtraction(first, second)
# 	first-second
# end

# def product (first, second)
# 	first * second
# end

# def quotient(first, second)
# 	 first / second
# end

# def remainder(first, second)
# 	first % second
# end

# def power(first, second)
# 	 first ** second
# end

# puts "#{first} + #{second} = #{addition(first, second)}"
# puts "#{first} - #{second} = #{subtraction(first, second)}"
# puts "#{first} * #{second} = #{product(first, second)}"
# puts "#{first} / #{second} = #{quotient(first, second)}"
# puts "#{first}  % #{second} = #{remainder(first, second)}"
# puts "#{first} ** #{second} = #{power(first, second)}"

# 2 b) Alt solution

# def all_functions(first, second, function)
# 	case function
# 		when "addition"
# 			first + second
# 		when "subtraction"
# 			first - second
# 		when "product"
# 			first * second
# 		when "quotient"
# 			first / second
# 		when "remainder"
# 			first % second
# 		when "power"
# 			first ** second
# 		end
# 	end

# 	puts "please enter your first integer:"
# first = gets.chomp.to_i

# puts "please enter your second integer:"
# second = gets.chomp.to_i
	


# puts "#{first} + #{second} = #{all_functions(first, second, "addition")}"
# puts "#{first} - #{second} = #{all_functions(first, second, "subtraction")}"
# puts "#{first} * #{second} = #{all_functions(first, second, "product")}"
# puts "#{first} / #{second} = #{all_functions(first, second, "quotient")}"
# puts "#{first}  % #{second} = #{all_functions(first, second, "remainder")}"
# puts "#{first} ** #{second} = #{all_functions(first, second, "power")}"

# 3 

# puts "please enter one or more words:"
# string1 = gets.chomp
# string2 = string1.delete" "

# puts "There are #{string2.length} characters in #{string1}."

# LS solution pretty much the same

# 4 

# def multiply(first, second)
# 	first * second
# end

# p multiply(8, 3)

# 5 

# def square(first)
# 	first * first
# end

# p square(5)

# 5 LS solution wanted me to fold ex n4 method ointo a new method. I think this wasn't explicit enough.

# def multiply(first, second)
# 	first * second
# end

# def square(n)
#   multiply(n, n)
# end

# p square(5)

# 6 

# def xor?(n1, n2)
# 	if (n1 == true && n2 == false) || (n1 == false && n2 == true)
# 		true
# 	else
# 		false
# 	end
# end

# p xor?(5.even?, 4.odd?)

# 7

# def oddities(arr)
# 	new_arr = []
# 	arr.each_with_index do |v, i|
# 		 if i % 2 == 0 
# 			new_arr << v
# 		 end
# 		end
# 	new_arr
# 	end

# 	array1 = [1, 5, 23, 5, 53, 3, 5]
# 	array2 = ['tiger', 'melon', 'sponge', 'griffin', 'ping-pong']
# 	p oddities(array2)



# 8  LS solution exactly the same as mine

# puts "enter your string here. Is it a palendrome?:"
# string = gets.chomp

# def palindrome?(string)
# 	string == string.reverse
# end

# p palindrome?(string)

# 9 Yet again, i misread the instructions (It should have ignored all non-alphanumeric characters)

# def real_palindrome?(string)
# 	string.downcase == string.downcase.reverse
# end

# p real_palindrome?("356a653")

# LS solution:

# def palindrome?(string)
# 	string == string.reverse
# end

# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end

# p real_palindrome?("al---c!!lca")


# 10 Palindromic numbers:I thought to_s was cheating, but that's what the LS solution does as well.

# def palindromic_numbers(int)
# 	int.to_s ==	int.to_s.reverse
# end

# p palindromic_numbers(454)


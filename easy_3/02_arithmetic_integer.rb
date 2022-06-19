# 2 a)

puts "please enter your first integer:"
first = gets.chomp.to_i

puts "please enter your second integer:"
second = gets.chomp.to_i

def addition(first, second)
	first + second
end

def subtraction(first, second)
	first-second
end

def product (first, second)
	first * second
end

def quotient(first, second)
	 first / second
end

def remainder(first, second)
	first % second
end

def power(first, second)
	 first ** second
end

puts "#{first} + #{second} = #{addition(first, second)}"
puts "#{first} - #{second} = #{subtraction(first, second)}"
puts "#{first} * #{second} = #{product(first, second)}"
puts "#{first} / #{second} = #{quotient(first, second)}"
puts "#{first}  % #{second} = #{remainder(first, second)}"
puts "#{first} ** #{second} = #{power(first, second)}"

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

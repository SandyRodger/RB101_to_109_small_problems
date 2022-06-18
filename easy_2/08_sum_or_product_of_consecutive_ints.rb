# 8 Totally works baby! LS solution is way different, but they still made 2 methods for the product and sum, so not so different.

def finds_product(integer)
	a = 1
	b = 1
		while b < (integer + 1)
		a *= b 
		b += 1
		end		
	a
end

def finds_sum(integer)
	a = 1
	b = 1
		while b < (integer) 
			a += (b + 1)
			b += 1
		end
	a
end

int = 9
p finds_product(int)
p finds_sum(int)

# LS solution:

# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end
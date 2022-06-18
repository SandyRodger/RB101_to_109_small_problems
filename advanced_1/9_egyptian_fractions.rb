=begin

A Rational Number is any number that can be represented as the result of the division between two integers, e.g., 1/3, 3/2, 22/7, etc. 
The number to the left is called the numerator, and the number to the right is called the denominator.

A Unit Fraction is a rational number where the numerator is 1.

An Egyptian Fraction is the sum of a series of distinct unit fractions (no two are the same), such as:

1   1    1    1
- + - + -- + --
2   3   13   15

Every positive rational number can be written as an Egyptian fraction. For example:

		1   1   1   1
2 = - + - + - + -
		1   2   3   6


Write two methods: one that takes a Rational number as an argument, and returns an Array 
of the denominators that are part of an Egyptian Fraction representation of the number, 
and another that takes an Array of numbers in the same format, and calculates the resulting Rational number. 
You will need to use the Rational class provided by Ruby.

egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

P: Write a method that takes a rational number and returns an array of nums. The output should represent the denominators of the egyptian fractions needed to constitute the input R number.
Then write a second method that takes method_1's output and finds the rational number

E: 

egyptian(Rational(2, 1))    # -> [1, 2, 3, 6] => a whole, a half, a third and a sixth make up 2/1
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5] => a whole, a half, a third, a quarter, and a fifth
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960] => all examples start with the same 3 numbers because they are all calculating numbers over/equal to 2

unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

D: 

input: 2 ints, representing a numerator and a denominator
Output: an array of ints representing denomiators where 1 is the numerator
Rational numbers

A: 

1. initialize a counter called 'denom' = 1
2. if rational num is greater than denom then shovel denom into output_arr and minus = it from rat_num

Unegyptian rationals:

1. 

C: 

1.

C:
=end

def egyptian(rat_num)
	denom = 1
	output_arr = []
	loop do
		if rat_num >= 1/denom && (rat_num - 1/denom.to_r) >= 0
			output_arr << denom
			rat_num -= 1/denom.to_r
		end
		denom += 1
		if rat_num == 0 
			return output_arr
		end
	end
end

p egyptian(Rational(2, 1))  == [1, 2, 3, 6]
p egyptian(Rational(137, 60))  == [1, 2, 3, 4, 5] #=> 137/60, 77/60, 47/60, 
p egyptian(Rational(3, 1))  == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

def unegyptian(array_of_denoms)
	new_arr = array_of_denoms.map do |denom|
		1/denom.to_r
	end
	new_arr.sum
end

p unegyptian(egyptian(Rational(1, 2)))  == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
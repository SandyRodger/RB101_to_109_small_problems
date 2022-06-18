
#9 Sum of digits ( I dind't read the instructions properly - it said, don't use each)

def sum_of_digits(int)
	total = 0
	int.digits.each {|i| total += i}
	total
end

p sum_of_digits(4782) # => 21
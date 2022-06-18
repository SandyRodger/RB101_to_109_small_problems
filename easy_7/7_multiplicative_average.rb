def show_multiplicative_average(array)

	divider = array.count

		if divider == 1
			return array[0].to_f
		end

	first_multiple = array[0]
	second_multiple = array[1]
	total = first_multiple * second_multiple
  counter = 2

		loop do
			break if divider <= counter

			total *= array[counter]
			counter += 1

		end

	result = total/divider.to_f

	result.ceil(3)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# LS solution:

# def show_multiplicative_average(numbers)
#   product = 1.to_f
#   numbers.each { |number| product *= number }
#   average = product / numbers.size
#   puts "The result is #{format('%.3f', average)}"
# end
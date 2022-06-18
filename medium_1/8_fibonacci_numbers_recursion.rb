def fibonacci(num)
	fib_arr = [1, 1]
	
	loop do
		break if fib_arr.count >= num
		p fib_arr << fib_arr[-2] + fib_arr[-1]
	end

	fib_arr[-1]
end



# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
p fibonacci(20) == 6765

# LS solution: (I should have used a recursive method)

# def fibonacci(number)
# 	if number < 2
# 		number
# 	else
# 		fibonacci(number - 1) + fibonacci(number - 2)
# 	end
# end
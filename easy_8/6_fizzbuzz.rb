def fizzbuzz(num1, num2)
	loop do
		if (num1 % 3 == 0) && (num1 % 5 == 0)
			p 'fizzbuzz'
		elsif	num1 % 3 == 0
			p 'fizz'
		elsif num1 % 5 == 0
			p 'buzz'
		else
		p num1
		end
		num1 += 1
		break if num1 > num2
	end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
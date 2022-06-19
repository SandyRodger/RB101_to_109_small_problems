# 1 Searching 101
arr2 = []

def sixth_repeated(an_array)
  sixth = an_array.pop
		if an_array.include?(sixth)
			puts "Your sixth number, #{sixth} had already been used among #{an_array[0]}, #{an_array[1]}, #{an_array[2]}, #{an_array[3]} and #{an_array[4]}."
		else
			puts "Great numbers, the sixth number had not already been entered"
		end
end

arr = []

puts "Please enter your first number"
arr << gets.chomp
puts "Please enter your second number"
arr << gets.chomp
puts "Please enter your third number"
arr << gets.chomp
puts "Please enter your fourth number"
arr << gets.chomp
puts "Please enter your fifth number"
arr << gets.chomp
puts "Please enter your sixth number"
arr << gets.chomp

sixth_repeated(arr)

# LS soluton is largely the same except they do not use a method and the 6th number isn't stored in the array, so they don't need to pop it out.

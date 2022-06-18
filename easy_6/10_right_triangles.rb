def triangle(num)
counter = num - 1
	loop do

	 p "#{" " * counter}#{"*" * (num - counter)}"
	 counter -= 1
	 break if counter == -1
	end

end


triangle(9)

#     *
#    **
#   ***
#  ****
# *****
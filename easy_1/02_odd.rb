# 2. Odd

def odd?(integer)
	if integer % 2 == 0
		puts false
	else
		puts true
	end
end

odd?(0)

# LS solution:  more or less the same as mine

# def is_odd?(number)
#   number % 2 == 1
# end
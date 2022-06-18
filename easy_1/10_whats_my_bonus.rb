#10 What's my bonus

def bonus(int, bool)
	if bool == true
	int/2
	else
		0
	end
end

p bonus(2800, true) # => 1400

# LS solution

# def calculate_bonus(salary, bonus)
# 	bonus ? (salary / 2) : 0
# end

# puts calculate_bonus(4890, true)
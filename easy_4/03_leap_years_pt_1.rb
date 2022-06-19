# 3 Leap Years (part 1) LS solutiuon similar to mine

def leap_year?(year)
	if (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))
		true
	else
		false
	end
end

p leap_year?(1752)

# 10 Palindromic numbers:I thought to_s was cheating, but that's what the LS solution does as well.

def palindromic_numbers(int)
	int.to_s ==	int.to_s.reverse
end

p palindromic_numbers(454)

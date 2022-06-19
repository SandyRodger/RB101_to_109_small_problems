# 5 Multiples of 3 and 5 (LS solution was 5 lines longer)

def multisum(int)
	arr = []
	for i in 1..int
		if (i % 3 == 0) || (i % 5 == 0)
		arr << i
		end
	end
	arr.sum
end

p multisum(20)
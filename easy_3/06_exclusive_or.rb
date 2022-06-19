# 6 

def xor?(n1, n2)
	if (n1 == true && n2 == false) || (n1 == false && n2 == true)
		true
	else
		false
	end
end

p xor?(5.even?, 4.odd?)

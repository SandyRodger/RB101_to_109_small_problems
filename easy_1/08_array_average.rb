# 8 Array average

def finds_average(array_of_integers)
	total = 0.0
	array_of_integers.each {|i| total+=i}
	total = total/array_of_integers.length
	total.to_f
end

array = [1, 4, 5, 29, 32, 3, 65]

p finds_average(array)
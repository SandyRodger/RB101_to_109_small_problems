# 6 Running totals

arr = [2, 5, 13]

def running_total(array)
	total = [] << array.shift
		loop do
			break if array.empty?
			total << (total[-1] + array.shift)
		break if array.empty?
		end
	total
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# LS solution:

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end
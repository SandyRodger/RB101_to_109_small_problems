# P:

# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays)
# that contain the first half and second half of the original Array, respectively.
# If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# E: 

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# D/A:

# C:

def halvsies(array)

	arr_1 = []
	arr_2 = []
	
	loop do
		break if array.empty?
		arr_1.append(array.shift)
		break if array.empty?
		arr_2.prepend(array.pop)
		break if array.empty?
end

	[arr_1, arr_2]

end

p halvsies([1, 2, 3, 4])  == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# LS solutiuon:

# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end
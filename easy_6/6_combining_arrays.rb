# P: Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
# There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# E:

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# D/A:

# C:

def merge(array_1, array_2)

	loop do
		if array_1.include?(array_2[-1])
			array_2.delete_at(-1)
		elsif array_2.empty?
			break
		else array_1 << array_2.pop
		end
	end

	array_1.sort

end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# LS solution:

# def merge(array_1, array_2)
#   array_1 | array_2
# end
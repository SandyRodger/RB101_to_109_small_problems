# def my_method(array)
#   if array.empty?
#     []
#   elsif
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])

# should print:

# []
# [21]
# [9, 16]
# [25, 36, 49]

# , but prints:

# []
# nil
# nil
# nil

# because... there is not condition for the elsif clause and the final 2 elsif/else conditions need to be swapped.

# 

def my_method(array)
  if array.empty?
    []
	elsif array.count == 1
    array.map do |value|
      value * 7
		end
	else
		array.map do |value|
			value * value
		end
	end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])


# []
# [21]
# [9, 16]
# [25, 36, 49]
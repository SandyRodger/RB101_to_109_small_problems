# Algorithm:

# 1. Take the first half of the array and nest it in a sub_array.
# 2. Take the second half of the array and nest it in a second_sub_array.
# a) pass the array as an argument into the merge_sort method.
# b) initialize a variable called 'halfway' which will be half the total number of numbers in the array.
# c) Use the .take and .drop methods to place the two halves in two seperate arrays and have array equal this.
# 3. Take each sub_array and do steps 1 and 2 to it.
# 	a) put steps 1 - 2 into a helper method called 'array_divider'.
# 	b) After having divided the array once, pass it into a loop in which the .each method is called on the arrays sub_arrays, passing them into the array_divider method. 
# 	c) In order to break when the .each method has broken down the objects into Integers ...
# PROBLEMS (in order of importance):

#  1. I don-t know how to loop the array splitter so that it picks the right sub_array. - each_with_index? 
#  2. I don-t know how to stop splitting once the sub_arrays all contain single integers.
#  3. I don-t know how to split the final pair in an odd-numbered array

# 4. Repeat steps 1 - 3 until the sub_arrays contain only one integer.
# 5. Then merge together each two arrays which contain numbers nearest to each other numerically.
# 6. Repeat step 5 until all of the arrays are unified into one ordered array.

# def array_divider(array)
# 	halfway = array.count/2
# 	array= array.take(halfway), array.drop(halfway)
# end

# def merge_sort(array)
# 	array = array_divider(array).each do |sub_array|	
# 			sub_array.replace(array_divider(sub_array))
# 			end
# end	
	
#   p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) # == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
# 	# p merge_sort([9, 5, 7, 1]) # == [1, 5, 7, 9]

# ATTEMPT 2 - 6.3.22

#P: 
#
#Sort an array of passed in values using merge sort. You can assume that this array may contain only one type of data. And that data may be either all numbers or all strings.

# Merge sort is a recursive sorting algorithm that works by breaking down the array elements into nested sub-arrays, then recombining those nested sub-arrays in sorted order.

# E:

# It is best shown by example. For instance, let-s merge sort the array [9,5,7,1]. Breaking this down into nested sub-arrays, we get:

# [9, 5, 7, 1] ->
# [[9, 5], [7, 1]] ->
# [[[9], [5]], [[7], [1]]]
# [[[9], [5]], [[7], [1]]] ->
# [[5, 9], [1, 7]] ->
# [1, 5, 7, 9]
# merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# merge_sort([5, 3]) == [3, 5]
# merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# D:

# Arrays.

# A:

# 1. pass the array to merge_sort method.
# 2. enter a loop which breaks the array into halves until each sub-array contains a single object.
# 3. join pairs of sub-array using the <=> operator to determine which goes with which. 
# 4. 


def merge(array1, array2)
	  index2 = 0
	  result = []
	
	  array1.each do |value|
	    while index2 < array2.size && array2[index2] <= value
	      result << array2[index2]
	      index2 += 1
	    end
	    result << value
	  end
	
	  result.concat(array2[index2..-1])
	end


def merge_sort(array)
  return array if array.size == 1

  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# P:

# Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

# E: 

# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# D/A:

# 1. compare the first two elements of the array. 
# a) Use a loop and 2 counters to do this
# 2. If the first is greater then exchange them.
# a) Use array.replace
# 3. Repeat this with the 2nd and third elements, by +=ing the counters
# 4. continue this process until the final pair is compared.
# 5. Repeat this process until the array is sorted into lowest to highest values. 


# C:

def bubble_sort!(array)
	loop do
		counter_1 = 0
		counter_2 = 1
			loop do
				if array[counter_1] > array[counter_2]
					val_1 = array[counter_1]
					val_2 = array[counter_2]
					array[counter_1] = val_2
					array[counter_2] = val_1
				end
				counter_1 += 1
				counter_2 += 1
				break if counter_2 == array.count
			end
		break if array == array.sort
	end
	array
end

p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# LS solution

# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       next if array[index - 1] <= array[index]
#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end

#     break unless swapped
#   end
#   nil
# end
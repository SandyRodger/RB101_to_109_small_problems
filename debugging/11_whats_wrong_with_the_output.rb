# P:

# Josh wants to print an array of numeric strings in reverse numerical order. 
# However, the output is wrong. Without removing any code, help Josh get the expected output.

# E: 


# arr = ["9", "8", "7", "10", "11"]
# p arr.sort do |x, y|
#     y.to_i <=> x.to_i
#   end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

arr = ["9", "8", "7", "10", "11"]

#TURN THE STRINGS INTO INTEGERS
arr_as_int = []
  arr.each do |x|
    arr_as_int << x.to_i
  end
	p "arr_as_int is #{arr_as_int}"
# ORDER THE INTEGERS NUMERICALLY
	ordered_arr = []
	ordered_arr = 	arr_as_int.sort {|x, y| y <=> x}
	p "ordered_arr is #{ordered_arr}"
# TURN THE INTEGERS INTO STRINGS
	arr_of_str = []
	ordered_arr.each do |int|
	arr_of_str.append(int.to_s)
	 end

	 puts "arr_of_str is #{arr_of_str}"


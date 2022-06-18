def include?(array, search_value)
	counter = 0

	loop do
		return false if array.empty?
		return true if array[counter] == search_value
		counter +=1
		return false if array[counter] == nil
	end

end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

LS solution:

def include?(array, value)
  !!array.find_index(value)
end

LS solution 2:

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end	

# 4 How many? My solution came mainly from slack. I ought understand it better.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
	p array.inject(Hash.new(0)) {|total, e| total[e] += 1 ;total}
end

count_occurrences(vehicles)

# #LS solution:

# def count_occurrences(array)
#   occurrences = {}

#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

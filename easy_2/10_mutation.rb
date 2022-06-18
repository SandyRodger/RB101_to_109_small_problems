# 10 Mutation - I think array2 will look like the original array 1 and that's all that will be printed'
#  I got it wrong, because I didn';t realise that when copying the values into the 2nd array, it was also copying the references.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
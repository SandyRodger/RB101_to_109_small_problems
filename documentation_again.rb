# 1. File::path - this is the class method. It returns the representation of the path

# File#path - this is the instance method. 
 
# Class methods are called on the class, while instance methods are called on objects. Thus:

# puts File.path('bin')

# calls the class method File::path since we're calling it on the File class, while:

# f = File.new('my-file.txt')
# puts f.path

# calls the instance method File#path since we're calling it on an object of the File class, namely f.

# Pay attention when reading the documentation; make sure you are using a class method when you need a class method, and an instance method when you need an instance method.

# 2. Optional Arguments Redux

# require 'date'

# puts Date.civil
# puts Date.civil(2016)
# puts Date.civil(2016, 5)
# puts Date.civil(2016, 5, 13)

#3. I don't understand how default arguments has done this here. Maybe I should study it some more.

# def my_method(a, b = 2, c = 3, d)
#   p [a, b, c, d]
# end

# my_method(4, 5, 6)


#=> 4, 5, 3, 6

# 4. - easy

# a = [1, 4, 8, 11, 15, 19]
# puts a.bsearch{ |i| i > 8}

# 5. Multiple signatures:

# a = %w(a b c d e)
# puts a.fetch(7)             #=> Index error: out of bounds error - correct
# puts a.fetch(7, 'beats me') #=> a b c d e beats me -  incorrect: only 'beats me => nil'
# puts a.fetch(7) { |index| index**2 } #=> 14 = incorrect: 49 => nil

# 6 Keyword arguments: - easy

# 5.step(to: 10, by: 3) { |value| puts value }

# # => 5, 8

# 7 - failed to find the answer

# s = 'abc'
# puts s.public_methods.to.s

# 8 

# a = [5, 9, 3, 11]
# puts a.min

# 9 finding YAML documentation.

# I had to look at the answer, It seems like they wanted me to.





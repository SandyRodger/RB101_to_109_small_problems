
 # 3. List of digits (I couldn't make this work)

def list_of_digits(integer)
	p integer.digits.to_s.reverse
end

list_of_digits(34869) 

# LS solution:

# 1: brute force:

# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)   # What is divmod?
#     digits.unshift(remainder)
#     break if number == 0
#   end
#   digits
# end

# # or idiomatic ruby:

# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end

# I need to revies/learn this.
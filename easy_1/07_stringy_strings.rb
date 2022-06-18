
#  7 Stringy strings

def stringy(integer)
	string = '1'
		loop do
			if (string.length<integer)&&(string[-1]=="1")
				string<<'0'
			elsif (string.length<integer) && (string[-1]=="0")
				string<<'1'
			break if string.length == integer
		end
	end
	string
end

puts stringy(45)

# LS SOLUTION

# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end

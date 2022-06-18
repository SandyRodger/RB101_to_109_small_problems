# D/A:
# 1. make the char blocks into an array.
# 2. use .each_char to iterate over the word asking if char.upcase ==  block [0] && not block [2] || block[1] and not block[0]
# and if yes then true, else false.




def block_word?(string)
	block_arr = ['B:O', 'X:K', 'D:Q', 'C:P', 'N:A', 'G:T', 'R:E', 'F:S', 'J:W', 'H:U', 'V:I', 'L:Y', 'Z:M']
	counter = 0
	new_word = ''


	 loop do
		block = block_arr[counter]
		string.each_char do |char|
	 			if (char.upcase == block[0] && char.upcase != block[2]) || (char.upcase == block[2] && char.upcase != block[0])
					new_word << char
				end
			end

		counter += 1

		break if counter >= block_arr.count
	end
	
	if new_word.split("").sort == string.split("").sort
		true
	else
		false
	end

end

p block_word?('BATCH') # == true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true

#LS olution:

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end
def staggered_case(string)
	counter = 0
	new_string = ""

	loop do
			case 
			when ("a".."z").include?(string[counter]) && counter.even?
				new_string << string[counter].upcase!
			when ("A".."Z").include?(string[counter]) && counter.odd?
				new_string << string[counter].downcase!
			else 
				new_string << string[counter]
			end
	
			counter += 1
			break if counter == string.length
			end

new_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
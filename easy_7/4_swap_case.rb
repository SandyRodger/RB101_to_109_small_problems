def swapcase(string)
	counter = 0

	loop do
		case 
		when ("a".."z").include?(string[counter])
			string[counter].upcase!
		when ("A".."Z").include?(string[counter])
			string[counter].downcase!
		end

		counter += 1
		break if counter == string.length
		end
	end
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
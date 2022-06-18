def letter_case_count(string)

	hash = {
	:lowercase => 0,
	:uppercase => 0, 
	:neither => 0
}

 counter = 0

 loop do
	break if string.empty?
		case 
		when ("a".."z").include?(string[counter])
			hash [:lowercase] += 1
		when ("A".."Z").include?(string[counter])
			hash [:uppercase] += 1
		else hash [:neither] += 1
		end

		counter += 1
		break if counter == string.length
		end

hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
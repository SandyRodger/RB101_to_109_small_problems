def get_grade(score_1, score_2, score_3)
	average = (score_1 + score_2 + score_3)/3 

	case 
		when average > 89
			'A'
		when average > 79
			'B'
		when average > 69
			'C'
		when average > 59
			'D'
		when average > 49
			'E'
		else
			'F'
	end

end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
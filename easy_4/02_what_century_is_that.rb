# 2 What centiury is that?

def century(year)
	string_year = year.to_s
	cent = ""
	case
	when (string_year.length == (1||2))||(year == 100)
		 "1st"
	when (string_year.length == 3) && ((string_year[0]=="1")||(year == 200))
		"2nd"
	when (string_year.length == 3) && ((string_year[0] == "2")||year == 300)
		"3rd"
	when (string_year.length == 3) && (string_year[1..2]=="00")
		string_year[0]<<"th"
	when (string_year.length == 3) 
		cent << string_year[0] 
		int_cent = cent.to_i
		int_cent += 1
    int_cent.to_s<<"th"
	when (string_year.length == 4) && (string_year[2..3]=="00") && (string_year[0] != "2")
		string_year[0..1]<<"th"
	when (string_year.length == 4) && (string_year[0..1] != ("20"||"21"||"22"||"23"))
		cent << string_year[0..1] 
		int_cent = cent.to_i
		int_cent += 1
    int_cent.to_s<<"th"
	when 	(string_year[0..1] == "20") || (year == 2100)
		"21st"
	when 	string_year[0..1] == "21"
		"22nd"
	when 	string_year[0..1] == "22"
		"23rd"
	when (string_year.length == 4) && (string_year[2..3]=="00")
		string_year[0..1]<<"th"
	end
end

p century(2100)

# LS solution: OK, I think I kmnew I was going way overboard in terms of complexity. I probably spent too long on this.

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end
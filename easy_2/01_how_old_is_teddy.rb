# 1. How old is teddy?

def teddy_intro
	teddy_name = gets.chomp 
	if teddy_name.empty?
		teddy_name = "Teddy"
	end
		puts "My Teddy's called #{teddy_name} and they're #{rand(20..200)} years old"
end

teddy_intro
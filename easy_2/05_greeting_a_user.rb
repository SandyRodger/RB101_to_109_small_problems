#5 Greeting a user

puts "Hey, what's your name?"
name = gets.chomp

if name[-1]=="!"
	puts "HEY THERE #{name.upcase}, YOU SURE ARE A LOUD FELLA'"
else
	puts "Why hello there #{name}"
end

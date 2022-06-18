
#4 When will I retire?

time = Time.new

puts "what is your age?"
age = gets.chomp.to_i

puts "and what age would yopu like to retire?"
target_r_age = gets.chomp.to_i

puts "It's now #{time.year}, so you'll retire in #{time.year+(target_r_age - age)}, 
			you only have #{(time.year+(target_r_age - age)) - time.year} years to go!"
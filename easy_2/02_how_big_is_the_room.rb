# 2 How big is the room?

puts "Hey, can you tell me how many metres wide your room is?"
width = gets.chomp.to_i

puts "and now, how many metres long is it?"
length = gets.chomp.to_i

square_metres = width * length
square_feet = square_metres*10.7639

puts "The area of the room is #{square_metres} metres, which is #{square_feet} feet"

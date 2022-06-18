
# 3 Tip calculator

def tip_calculator(bill_amount, tip_rate)
	(bill_amount/100)*tip_rate
end

puts "How much was the bill in the end?"
bill = gets.chomp.to_f

puts "And what percentage are we tipping?"
tip = gets.chomp.to_f

puts "well that means we tip #{tip_calculator(bill, tip)} pounds, don't we"

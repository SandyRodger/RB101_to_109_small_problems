# P: 
# Explicit: 

# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Implicit: the bank of switches is changed by each iteration of the method.

# Input: integer

# Output: A series of strings with different numbers inserted into them.

# E: 

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# D/A: 

# 1. Write the method 'which_switch', taking 'num' as an argument.
# 2. Create a hash within 'which_switch' of the bank of switches using num to iterate the correct number of switches.
# 3. use puts method to output a sentence "round 1: every light is turned on"

# 4. Write a helper method called 'toggle_switches', which takes the hash and the num from 'which_switch' and iterates through the hash mutating the values of the ketys that are divisible by num.

# 5. Write a helper method called 'lights_string' to assemble the part of the output that shows how many lights are turned on and off.
# 5. Use a loop to output the sentence "round #{counter}: lights #{lights_string} are now turned on"




def lights_off(array)

	counter = 0
	output_string = ''

	if array.size == 2
		output_string << "#{array[0]} and #{array[1]}"
		return output_string
	end

 loop do
		output_string << "#{array[counter]},"
			counter += 1
		if array[counter] == array[-1]
			return output_string << "and #{array[counter]}"
	end
end

end

def lights_on(array)

	counter = 0
	output_string = ''
	num_of_lights_left_on = 0

	if array.size == 2
		output_string << "#{array[0]} and #{array[1]}"
		return output_string
	end

 loop do
		output_string << "#{array[counter]},"
			counter += 1
		if array[counter] == array[-1]
			return output_string << "and #{array[counter]}"
	end
end

num_of_lights_left_on = output_string.length

end

def light_strings(hash)

lights_off = []
lights_on = []

	hash.each do |k, v|
		if v == true
			lights_on << k
		elsif
			lights_off << k
		end

	end

	
	"lights #{lights_off(lights_off)} are now off. #{lights_on(lights_on)} are on"
end

def toggle_switches(num, hash)

	hash.each do |k, v|
		if k % num == 0 && v == true
			hash [k] = false
		elsif k % num == 0 && v == false
			hash [k] = true
		end
	end

	light_strings(hash)
end

def which_switch(num)

	bank_of_switches = {1 => true}
	counter = 2
	loop do
		bank_of_switches [counter] = true
		break if counter >= num
		counter += 1
	end

	puts "round 1: every light is turned on"

	counter_2 = 2
  output_1 = ''

	loop do
		output_1 = toggle_switches(counter_2, bank_of_switches)
		puts "round #{counter_2} #{output_1}"
		break if counter_2 >= num
		counter_2 += 1
	end	

total = 0

  bank_of_switches.each_value do |v|
		if v == true
			total += 1
		end
	end

 return_value = []

 bank_of_switches.each do |k, v|
		if v == true
			return_value << k
		end
	end

	puts "The result is that #{total} lights are left on, #{output_1}. The return value is #{return_value}."

end
	
which_switch(384)

# LS solution:

# # initialize the lights hash
# def initialize_lights(number_of_lights)
#   lights = Hash.new
#   1.upto(number_of_lights) { |number| lights[number] = "off" }
#   lights
# end

# # return list of light numbers that are on
# def on_lights(lights)
#   lights.select { |_position, state| state == "on" }.keys
# end

# # toggle every nth light in lights hash
# def toggle_every_nth_light(lights, nth)
#   lights.each do |position, state|
#     if position % nth == 0
#       lights[position] = (state == "off") ? "on" : "off"
#     end
#   end
# end

# # Run entire program for number of lights
# def toggle_lights(number_of_lights)
#   lights = initialize_lights(number_of_lights)
#   1.upto(lights.size) do |iteration_number|
#     toggle_every_nth_light(lights, iteration_number)
#   end

#   on_lights(lights)
# end

# p toggle_lights(1000)
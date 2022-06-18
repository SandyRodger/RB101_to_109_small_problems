def how_many_names?(array)
	total = array.count
	counter = 0
	string = "#{array[counter]}"

	loop do
		counter += 1
		break if array[counter] == nil
		string << " #{array[counter]}"
	end

	string
end

def greetings(array, hash)
greeting = "Hello, #{how_many_names?(array)}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
	loop do
	puts  greeting
	break
	end
end

greetings(['John', 'Q', 'Doe', 'Balthazaar', 'Hemmingway'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# LS solution:

# def greetings(name, status)
#   "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
# end

# P:

# Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, 
# and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, 
# but the text data should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the 
# appropriate types into the text, and print the result.

# The challenge of this program isn't about writing your program; it's about choosing how to represent your data. 
# Choose the right way to structure your data, and this problem becomes a whole lot easier. This is why we don-t show you what the input data looks like; 
# the input representation is your responsibility.

# E:	

# The sleepy brown cat noisily
# licks the sleepy yellow
# dog, who lazily licks his
# tail and looks around.

# The %{adjective} brown %{noun} %{adverb}
# %{verb} the %{adjective} yellow
# %{noun}, who %{adverb} %{verb} his
# %{noun} and looks around.

# D/A:

# 1. Find a way to read text file from within a ruby program.
# 2. Write the ruby program with the words in the correct places.
# 3. print the result. 

# C:


adjective = ['amazing', 'fluffy', 'haggard', 'spotty']
adverb = ['quickly', 'slowly', 'awfully', 'cruelly']
verb = [' runs', ' hits', ' licks', ' squashes']
noun = ['pot', 'stick', 'eyeball', 'liquid']

adjective_1 = adjective[rand(adjective.count)]
adjective_2 = adjective[rand(adjective.count)]
adjective_3 = adjective[rand(adjective.count)]
noun_1 = noun[rand(noun.count)]
noun_2 = noun[rand(noun.count)]
noun_3 = noun[rand(noun.count)]
verb_1 = verb[rand(verb.count)]
verb_2 = verb[rand(verb.count)]
adverb_1 = adverb[rand(adverb.count)]
adverb_2 = adverb[rand(adverb.count)]

File.open("/Users/sandyboy/coding/launch_school/exercises/RB101_RB109_small_problems/advanced_1/text.txt", "r") do |f|
  f.each do |word|
		 word.gsub!(%{adjective1}, adjective_1)
		 word.gsub!(%{adjective2}, adjective_2)
		 word.gsub!(%{adjective3}, adjective_3)
		 word.gsub!(%{noun1}, noun_1)
		 word.gsub!(%{noun2}, noun_2)
		 word.gsub!(%{noun3}, noun_3)
		 word.gsub!(%{ verb1}, verb_1)
		 word.gsub!(%{ verb2}, verb_2)
		 word.gsub!(%{adverb1}, adverb_1)
		p word.gsub!(%{adverb2}, adverb_2)
  end
end

# LS solution:

# ADJECTIVES = %w(quick lazy sleepy ugly).freeze
# NOUNS      = %w(fox dog head leg cat tail).freeze
# VERBS      = %w(spins bites licks hurdles).freeze
# ADVERBS    = %w(easily lazily noisly excitedly).freeze

# File.open('madlibs.txt') do |file|
#   file.each do |line|
#     puts format(line, noun:      NOUNS.sample,
#                       verb:      VERBS.sample,
#                       adjective: ADJECTIVES.sample,
#                       adverb:    ADVERBS.sample)
#   end
# end
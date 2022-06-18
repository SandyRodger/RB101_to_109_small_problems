# P:

# We started working on a card game but got stuck. Check out why the code below raises a TypeError.

# Once you get the program to run and produce a sum, you might notice that the sum is off: It-s lower than it should be. Why is that?



# Determine the score of the remaining cards in the deck


# THE ORIGINAL CODE WITH EXPLANATION:

# cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

# deck = { :hearts   => cards,
#          :diamonds => cards,
#          :clubs    => cards,
#          :spades   => cards }

# def score(card)
#   case card
#   when :ace   then 11
#   when :king  then 10
#   when :queen then 10
#   when :jack  then 10
#   else card
#   end
# end


# player_cards = []
# deck.keys.each do |suit|
#   cards = deck[suit]
#   cards.shuffle!
#   player_cards << cards.pop
# end

# sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#   remaining_cards.map do |card|
#     score(card)
#   end

# because #map does not mutate the original remaining_cards element in line 63, here in line 67 it is still refering to symbols, which cannot be added with a #+ method. 
#	 Hence the error message:  `+': :jack can't be coerced into Integer (TypeError)

# 															# The second reason why the code is faulty and produces a number which is too low is that the cards variable refered to in line 27 is changed 4 times rather than 4 different suits being changed. 
# Then this suit minus 4 cards is multiplied 4 times in line 68 to give the wrong number.

# 4 different suits being changed. Then this suit minus 4 cards is multiplied 4 times in line 34 to give the wrong number.

 # CORRECTED CODE

 deck = 
 				{ :hearts   => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
					:diamonds => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
					:clubs    => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
					:spades   => [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace] }
				
def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.delete(cards[0]) # Here I delete rather tahn pop out the value needed so that it is not calculated when totaling the remaining cards.
end

p "the hand chosen is #{player_cards}"

# Determine the score of the remaining cards in the deck

card_scores = 0
deck.reduce(0) do |sum, (deck, remaining_cards)|
  remaining_cards.each do |card|
 card_scores += score(card)
  end
  card_scores
end

p "The score of the cards remaining in the deck is #{card_scores}"

# # MY TEST

player_cards_total = 0
deck_total = 380
player_cards.map do |card|
	player_cards_total += score(card)
end

remaining_total = deck_total - player_cards_total


p "the output should be #{remaining_total}"


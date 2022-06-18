# Require pry

# P:

# We wrote a neutralize method that removes negative words from sentences. However, it fails to remove all of them. What exactly happens?

def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

My answer: In line 10 the delete method deletes the first and third words that evaluate to true, but not the 2nd. This is becaue the .each method 
shifts the values up the index when the first word is deleted. So it continues to iterate at index 2, after having deleted the word at index 1
, but boring has not been evaluated.


# 1 ASCII String Value

def ascii_value(string)
  result = 0
	string.each_char {|char|result += char.ord}
	result
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# LS solution: Identical to mine! Wohoo!
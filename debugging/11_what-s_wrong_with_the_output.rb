arr = ["9", "8", "7", "10", "11"]

p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# p arr.map(&:to_i).sort

# p "9".ord # => 57
# p "8".ord # => 56

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 
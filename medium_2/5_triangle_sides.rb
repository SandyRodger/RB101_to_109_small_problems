# P:
# A triside is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triside, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triside is invalid.

# Write a method that takes the lengths of the 3 sides of a triside as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triside is equilateral, isosceles, scalene, or invalid.

# E:

# triside(3, 3, 3) == :equilateral
# triside(3, 3, 1.5) == :isosceles
# triside(3, 4, 5) == :scalene
# triside(0, 3, 3) == :invalid
# triside(3, 1, 1) == :invalid

# D/A:

# C:

def triside(side_1, side_2, side_3)
	case
	when ((side_1 == 0) || (side_2 == 0) || (side_3 == 0)) || ((side_1 > (side_2 + side_3))|| (side_2 > (side_1 + side_3)) || (side_3 > (side_1 + side_2)))
		:invalid
	when (side_1 == side_2) && (side_2 == side_3)
		:equilateral
	when (side_1 != side_2) && (side_2 != side_3) && (side_3 != side_1)
		:scalene
	when (side_1 != side_2) || (side_2 != side_3) || (side_3 != side_1)
		:isosceles
	end
end

# LS solution:

# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3]
#   largest_side = sides.max

#   case
#   when 2 * largest_side > sides.reduce(:+), sides.include?(0)
#     :invalid
#   when side1 == side2 && side2 == side3
#     :equilateral
#   when side1 == side2 || side1 == side3 || side2 == side3
#     :isosceles
#   else
#     :scalene
#   end
# end

p triside(3, 3, 3) == :equilateral
p triside(3, 3, 1.5) == :isosceles
p triside(3, 4, 5) == :scalene
p triside(0, 3, 3) == :invalid
p triside(3, 1, 1) == :invalid
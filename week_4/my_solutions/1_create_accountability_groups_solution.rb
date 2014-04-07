# U2.W4: Accountability Group Creator


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: Array of names
# Output: Arrays for every four students.
# Steps: 
# 1. Shuffle the array
# 2. Slice four students from shuffled array
# 3. Push every four of them into group arrays


# 3. Initial Solution

def group_creator (array)
 	array.shuffle!
 	group = array.each_slice(4).to_a
 	if array.length % 4 == 1
 		group[0] << array[-1]
 	elsif array.length % 4 == 2
 		group[0] << array[-1]
 		group[1] << array [-2]
 	elsif array.length % 4 == 3
 		group[0] << array[-1]
 		group[1] << array[-2]	
 		group[2] << array[-3]	
 	end	
 	return group
end

# 4. Refactored Solution

def group_creator (array)
	array.shuffle!
	group = array.each_slice(4).to_a
	remainder = array.length % 4
	i = 0
	while i < remainder
		group[i] << array[0 - (i + 1)]
		i += 1
	end
	return group
end


# 1. DRIVER TESTS GO BELOW THIS LINE

fence_lizards == ["Adam Dziuk", "Adam Ryssdal", "Aki Suzuki", "Allison Wong", "Andra Lally", "Andrew McDonald", "Anup Pradhan", "CJ Jameson", "Christopher Aubuchon", "Clark Hinchcliff", "Devin Johnson", "Dominick Oddo", "Dong Kevin Kang", "Eiko Seino", "Eoin McMillan", "Eric Wehrli", "Hunter Chapman", "Jacob Persing", "Jon Pabico", "Mary (Molly) Huerster", "Parjam Davoody", "Samuel Davis", "Sebastian Belmar", "Shawn Seibert", "William Bushyhead", "Yuzu Saijo", "Christiane Kammerl"]

puts group_creator(fence_lizards).class == Array
puts group_creator(fence_lizards).length == 6


# 5. Reflection 

# It was a tricky one specially how to add remainder to the groups.

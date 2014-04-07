# Pseudocode:

# 1. convert the number to a string
# 2. then string to array
# 3. then reverse each the array
# 4. slice every three elements of the array
# 5. join the elements with ,
# 6. reverse it back to the original format/

# Initial Solution:

def separate_comma(number)
	str = number.to_s
	array = str.chars.to_a
	reverse_array = array.reverse
	separate_array = reverse_array.each_slice(3).map(&:join)
	result = separate_array.join(",")
	return result
end



# Refactored Solution:

def separate_comma(number)
   number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end

# Reflections:

# I still have a hard time understanding map method.
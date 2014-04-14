# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a credit card number
# Output: validate if its correct or not
# Steps:
# 1.Starting with the second to last digit, double every other digit until you reach the first digit
# 2.Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0)
# 3.If the total is a multiple of ten, you have received a valid credit card number!
 


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits


class CreditCard

	def initialize(number)
		@number = number
		if number.to_s.length != 16
			raise ArgumentError.new("Wrong number")
		end
	end

	def check_card
		number_array = @number.to_s.split("")
		new_numbers = []
		number_array.each_with_index do |value, index|
			if index % 2 == 0
				new_value = value.to_i * 2
				new_value.to_s.split(//).each { |x| new_numbers << x.to_i}
			else
				new_numbers << value.to_i
			end
		end

			total_sum = new_numbers.inject{ |sum, num| sum + num }
			if total_sum % 10 == 0
				return true
			else
				return false
			end
	end
end



# 4. Refactored Solution

class CreditCard

	def initialize(number)
		@number = number
		raise ArgumentError.new("Wrong number") if number.to_s.length != 16
	end

	def check_card
		number_array = @number.to_s.split("")
		new_numbers = []

		number_array.each_with_index do |value, index|
			if index % 2 == 0
				new_value = value.to_i * 2
				new_value.to_s.split(//).each { |x| new_numbers << x.to_i}
			else
				new_numbers << value.to_i
			end
		end

			total_sum = new_numbers.inject{ |sum, num| sum + num }

			if total_sum % 10 == 0
				return true
			else
				return false
			end
	end
end



# 1. DRIVER TESTS GO BELOW THIS LINE

card1 = CreditCard.new(4408041234567893)
p card1.check_card == true

card2 = CreditCard.new(4408041234567892)
p card2.check_card == false

# 5. Reflection 

# I don't know how to tets "ArgumentError"

# when I use IRB, there's a problem and asks me about possibilities. 

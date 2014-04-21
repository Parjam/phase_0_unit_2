# U2.W6: Testing Assert Statements


# I worked on this challenge [Parjam Davoody, Devin Johnson].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end
 
name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# We have a function called assert. It yields to a block of code where it was called unless the block resturns true which will raise "Assertion failed".
# line 14 calls the assert function which yeilds flow control back to the block on line 14 which returns true so no assertion failed is raised.
# line 15 calls the assert function which yeilds flow control back to the block on line 15 name does not equal "billybob" so assersion failed is raised.

# 3. Copy your selected challenge here


class CreditCard

	def initialize(ccn)
		raise ArgumentError.new("Credit card number must be exactly 16 numerical characters long") if ccn.to_s.length != 16
		@ccn = ccn
	end

	def check_card
		digits = @ccn.to_s.split("")

		index = 14
		while index >= 0
			digits[index] = (digits[index].to_i * 2).to_s.split("")
		index -= 2
		end

		digits.flatten!.map! do |digit|
			digit.to_i
		end

		digits.reduce(:+) % 10 == 0 ? true : false
	end
end


# card = CreditCard.new(5486249876257366)
# p card.check_card == true
# card = CreditCard.new(5486249876257365)
# p card.check_card == false
# begin
#  card = CreditCard.new(1093893)
# rescue
#  fail = $!.message  # ruby stores the last exception caught in the special variable '$!'
# end
# p fail == "Credit card number must be exactly 16 numerical characters long"



# 4. Convert your driver test code from that challenge into Assert Statements

card1 = CreditCard.new(5486249876257366)
assert {card.check_card}
card2 = CreditCard.new(5486249876257365)
assert {card.check_card}
begin
  card = CreditCard.new(1093893)
rescue
  fail = $!.message  # ruby stores the last exception caught in the special variable '$!'
end
assert {fail == "Credit card number must be exactly 16 numerical characters long"}


# 5. Reflection 
=begin
We had a problem at first understanding what exactly yeild was doing as well as how assert was working.
We figured out the concept of assert and how it works
We learned how to use yeild properly and assert. I think once we figured out how yeild was working we were fairly
confident in our ability to change driver code into assert statements.
By using assert functions we can write driver code quicker and easier
=end
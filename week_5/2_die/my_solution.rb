# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: a labeled die with sides
# Output: result of rolling the die
# Steps:
# initializing labels and raising an ArgumentError 
# defining sides and rolls

# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels == []
  		raise ArgumentError.new ("No Input!")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
    @labels.sample
  end
end



# 4. Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new ("No Input!") if labels.empty?
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(["A","B","C","D"])
die.sides == 4
die1 = Die.new(["A"])
die1.sides == 1
die1.roll == "A"


# 5. Reflection 

# I don't know how to test a random string or number in an array with more than 1 element.
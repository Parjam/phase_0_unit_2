# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: defining sides and method roll
# Output: roll returns a random number between one and sides.
# Steps:
# 1. defining sides
# 2. Argument error condition
# 3. random number for roll


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
    	raise ArgumentError.new ("Wrong Input!")
    end
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(1..sides)
  end
end



# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new ("Wrong Input!")
    end
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(1..sides)
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(6)
p die.sides == 6

# 5. Reflection 

# I tried a lot to write a driver code to test the random roll number, but since it is random, I don't know how to make it equal to something
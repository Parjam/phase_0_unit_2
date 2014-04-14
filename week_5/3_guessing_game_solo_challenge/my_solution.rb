# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: a guessing number
# Output: the result if we guessed it right
# Steps:
# 1. initializing variables
# 2. writing a method guess for the gussing number
# 3. if else loop for different conditions.
# 4. method solved for checking to see if we guessed the answer.


# 3. Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solve = false
  end

  def guess (num)
  	@solve = false
  	if num > @answer
  		:high
  	elsif num < @answer
  		:low
  	else
  		@solve = true
  		:correct
  	end
  end

  def solved?
  	@solve
  end

end



# 4. Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solve = false
  end

  def guess (num)
  	@solve = false
  	if num > @answer
  		:high
  	elsif num < @answer
  		:low
  	else
  		@solve = true
  		:correct
  	end
  end

  def solved?
  	@solve
  end
  
end



# 1. DRIVER TESTS GO BELOW THIS LINE


game = GuessingGame.new(10)
p game.guess(100) == :high
p game.guess(0) == :low
p game.guess(10) == :correct


# 5. Reflection 

# when I'm trying to work with IRB, :high makes it "Display all 366 possibilities"!! I don't how to solve it.

# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself

# 2. Pseudocode

# Input: There are two different inputs in this case. The number I "thought of" (answer) and the other person's guess (guess)
# Output: For GuessingGame.guess I should get :correct if I get it right, :high if my guess is over the number and :low if my guess is under the number
# For solved output should be true if the guess is correct and false in any other case
# Steps:
# 1) Define initialize method that takes the answer as an argument
# 2) Define instance variable that equals the argument
# 3) Define instance variable solved equal to false
# 4) define method guess
# 5) Block should be an if statemente where a guess too high retuns :high, one too low returns :low, and the right one returns :true
# 6) define soolved method that should return true if guess is correct and false if guess is incorrect
# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#   	if guess > @answer
#   		return :high
#   	elsif guess < @answer
#   		return :low
#   	else
#   		return :correct
#   	end
#   end
  
#   def solved?
#   	return false
#   	if guess == :correct
#   		return true
  		
#   	end
#   end
#   # Make sure you define the other required methods, too
# end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
  	if guess > @answer
  	  @solved = false
  		return :high
  	elsif guess < @answer
  	  @solved = false
  		return :low
  	else
  	  @solved = true
  		return :correct
  	end
  end

  def solved?
    @solved
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

round_one = GuessingGame.new(10)

p round_one.guess(5) == :low
p round_one.guess(15) == :high
p round_one.guess(10) == :correct
p round_one.solved? == true


# 5. Reflection 
# # * What parts of your strategy worked? What problems did you face? * What questions did you have while coding? What resources did you find to help you 
# answer them? * What concepts are you having trouble with, or did you just figure something out? If so, what? * Did you learn any new skills or tricks?
# * How confident are you with each of the Learning Competencies? # * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you 
# find tedious?

# GuessingGame.initialize worked fine and I thought GuessingGame.guess also did since the only test that was failing refered to the value of solved.
# However, during tutoring I realized that the way the tests were written the solved method only had only to reflect the true or flase value, but not 
# contain the block of code that established it. Instead, it had to be inside the if statement in GuessingGame.guess. This made me meditate a bit about
# the way I approach instructions in challenges, and try not to always take a sequential approach to it, or at least rethink the structure of my solution
# if I face failing tests. This was an enjoyable challenge in that it wasn't really complex but it still made me work hard to get the answer and opened 
# my mindset a bit in the process.
#
#
#
#
#
#
#


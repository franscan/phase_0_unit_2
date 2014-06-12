# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The above code first defines a method where the error message "Assertion failed" will be raised unless whatever block of code is passed when we call the
# method evaluates to true.
# After that, the variable name is defined as the string "bettysue"
# On line 13, assert is called with a block which states that name is equal to bettysue. As this evaluated to true, nothing happens (no error raised)
# In the following line, the method is called again but the block this time says that name is equal to billybob is false, which is why we get the message:
# my_solution.rb:9:in `assert': Assertion failed! (RuntimeError)from /Users/Frank/DBC/phase0/phase_0_unit_2/week_6/1_assert_statements/my_solution.rb:14:in
# `<main>'


# 3. Copy your selected challenge here


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

  def solved
    @solved
  end
end

# 4. Convert your driver test code from that challenge into Assert Statements
# p GuessingGame.new(10).guess(5) == :low
# p GuessingGame.new(10).guess(15) == :high
# p GuessingGame.new(10).guess(10) == :correct
# p GuessingGame.new(10).solved == false

def assert
	raise "Assertion failed!" unless yield
end

# def assert
# 	if yield 
# 		p "Test passed neighborino!"
# 	else
# 		p "This test sucked at passing, seriously"
# 	end
# end



round_one = GuessingGame.new(10)

assert {round_one.guess(5) == :low}
assert {round_one.guess(15) == :high}
assert {round_one.guess(10) == :correct}
assert {round_one.solved == true}

# 5. Reflection
# * What parts of your strategy worked? What problems did you face? 
# The exercise didn't call for a complex strategy, first part was only descriptive and the second one was a reformulation of existing test.
# The problem I faced was that I had to slightly modify how I had written my original tests in order for the last of them to correctly check the value of
# solved. But this was a problem I brought over from the previous challenge, where I also corrected it. Hooray for selfimprovement!
# 
# 
# 
# * What questions did you have while coding? What resources did you find to help you answer them?
# I was having trouble finding the right word to describe the assert statement in the pseudocode section so I resorted to ruby docs and a bit of general
# web research
# 
# 
# 
# 
# * What concepts are you having trouble with, or did you just figure something out? If so, what? 
# This exercise gave me a betetr understading of assert statements and the yield keyword.
# 
# 
# 
# 
# 
# * Did you learn any new skills or tricks?
# Basic assert statements I guess!
# 
# 
# 
# 
# 
# * How confident are you with each of the Learning Competencies? 
# Pretty confident if I may say so (at this level at least)
# 
# 
# 
# 
# 
# * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you # find tedious?
# The first part wasn't tedious but it was more about being sure I understood concepts and how the method work whereas since the second part consisted of 
# seeing the magic coming into play, it was somewhat more enjoyable
# 
# 
# 
# 
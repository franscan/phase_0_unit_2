# U2.W5: Die Class 1: Numeric

# I worked on this challenge by myself.

# 2. Pseudocode

# Input: A number of the user'z choice between 1 and 6.
# Output: 
# For initialize -> argument error if die.new is passed with a number lower than 1
# For sides -> the value entered as an argument when the class was instantiated
# For roll -> a random number between 1 and the value entered as an argument when the class was instantiated
# Steps: 
# For initialize -> set instance variable "@sides" and make it equal to argument
# 					raise argument error if @sides is smaller than 1
# For sides -> return @sides
# For roll -> generate a random number between 1 and @sides


# 3. Initial Solution

class Die
  def initialize(sides)
  	@sides = sides
  	if @sides < 1
    	raise ArgumentError.new("You must choose a minimum of one")
    end
  end
  

  def sides
    return @sides
  end
  
  def roll
    1 + rand(@sides)
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
p Die.new(1).sides == 1
p Die.new(2).sides == 2
p Die.new(3).sides == 3
p Die.new(4).sides == 4
p Die.new(5).sides == 5
p Die.new(6).sides == 6


p Die.new(1).roll <= Die.new(1).sides
p Die.new(2).roll <= Die.new(2).sides
p Die.new(3).roll <= Die.new(3).sides
p Die.new(4).roll <= Die.new(4).sides
p Die.new(5).roll <= Die.new(5).sides
p Die.new(6).roll <= Die.new(6).sides










# 5. Reflection 
# # * What parts of your strategy worked? What problems did you face? * What questions did you have while coding? What resources did you find to help you 
# answer them? * What concepts are you having trouble with, or did you just figure something out? If so, what? * Did you learn any new skills or tricks?
# * How confident are you with each of the Learning Competencies? # * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you 
# find tedious?
# This exercise worked out fairly fast. As per the instructions I read up on classes in the well grounded rubyist so I just had to do some research on 
# Random in order to apply it correctly, which was the new method I learnt thanks to this challenge. I actually enjoyed a lot this challenge. Even if it 
# was an easy one, it felt great to just breeze through a challenge for the first time! I have to admit though I'm not a big fan of doing driver code, but
# then again that is precisely the reason it was a good thing I had to write some here.
#
#
#
#
#
#
#
#
#
#

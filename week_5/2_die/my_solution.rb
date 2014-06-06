# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself and did debugging in tutoring with Emily Anderson

# 2. Pseudocode

# Input: Array of strings
# Output:
# For initialize -> argument error if die.new is passed with an empty array
# For sides -> considering each string in the array equals a side in the die, we still need the value of @sides as output for this method,
# the difference will be how we obtain that value
# For roll -> a random string contained in the array we entered as an argument when the class was instantiated
# Steps: 
# For initialize -> set instance variable "@sides" and make it equal to the array length
# 					raise argument error if @sides is smaller than 1
# For sides -> return @sides
# For roll -> set a variable that equal a random number between 1 and @sides
# 			  return string located in the array index equal to the value of the variable defined in the previous line 



  # 3) Die#roll returns a single letter if one label is passed in
  #    Failure/Error: Array.new(100) { die.roll }.should eq Array.new(100) { random_letter }

  # 4) Die#roll returns every possible letter for a sufficiently large number of rolls
  #    Failure/Error: output.sort.should eq possible_values.sort




# 3. Initial Solution

# class Die
#   def initialize(labels)
#   @labels = labels
#   	if @labels.length < 1
#     	raise ArgumentError.new("You array can not be empty")
#     end
#   end

#   def sides
#   	return @labels.length
#   end

#   def roll
#     roll = @labels[0 + rand(labels.length - 1)]
#     return roll
#   end
# end




# 4. Refactored Solution


class Die
  def initialize(labels)
  @labels = labels
    if @labels.length < 1
      raise ArgumentError.new("You array can not be empty")
    end
  end

  def sides
    return @labels.length
  end

  def roll
    max = @labels.length
    roll = @labels[0 + rand(max)]
    return roll
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE

p Die.new([1, 2, 3, 4, 5, 6, 7, 8, 9]).sides == 9
p Die.new(array = [1, 2, 3, 4, 5, 6, 7, 8, 9]).roll <= 9


# 5. Reflection 
# # * What parts of your strategy worked? What problems did you face? * What questions did you have while coding? What resources did you find to help you 
# answer them? * What concepts are you having trouble with, or did you just figure something out? If so, what? * Did you learn any new skills or tricks?
# * How confident are you with each of the Learning Competencies? # * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you 
# find tedious?

# Since this was a variation of the first challenge, it started out easy, with the first two methods working quite simply. However, when I got to the
# third one I made a wrong assumption, which honestly I still don't understand why is wrong, and that had me stuck for a while. Let's use an example. 
# Array = ["a","b","c","d","e","f","g","h","i","j"]
# In this case Array.length = 10
# But the index positions range from 0-9, and that is why initially I told the rand method to generate a number from 0 to array.length - 1.
# However, this failed the last test in the rspec, which I found out with help from a tutoring session.
# 
# 
# 
# 
# 
#
#

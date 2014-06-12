# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.

# Release 1: Review the Driver Code
# These do not have expectations that would return true or false if called. Add assert statements (remember to define the assert method!) to make sure it's working properly.


# 2. Pseudocode
# We definitely know we have a PezDispenser class, but what are it's innards? What are PezDispenser's attribute(s) and method(s)? Take a moment to list out all the methods, and show the input and output. It's good to be clear when there isn't an input or output!
# The attribute of PezDispenser is its contents. To create the object and manage it, we need the following methods.
# 1) initialize: takes an array as an argument, which will be the content of the Pez Dispenser (instance variable).
# 2) add_pez: takes a random pez and puts into our contents array
# 3) get_pez: takes the last pez from our contents array
# 4) pez_count: teels us how many pez we have, we just need the array length for this
# 5) see_all_pez: shows all pez, it should return the whole contents array

# 3. Initial Solution
# Make sure your test code still works and satisfies the expected output.
class PezDispenser
	attr_reader :contents

	def initialize(array)
		@contents = array
	end
		
	def add_pez(new_pez)
		contents.unshift(new_pez)
	end
	
	def get_pez
    	contents.shift
	end

	def pez_count
		contents.length
	end
	
	def see_all_pez
		puts contents		
	end	 
end
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
  if yield
    p "A passed test makes for one happy ol' canucklehead"
  else
    raise "Assertion failed bub! Next time you're getting an adamantium claw in each hand"
  end
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)

assert {"A new pez dispenser has been created. You have #{super_mario.pez_count} pez!" == "A new pez dispenser has been created. You have 9 pez!"}
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")
assert {"Now you have #{super_mario.pez_count} pez!" == "Now you have 10 pez!"}
puts "Oh, you want one do you?"
assert {"The pez flavor you got is: #{super_mario.get_pez}" == "The pez flavor you got is: purple"}
assert {"Now you have #{super_mario.pez_count} pez!" == "Now you have 9 pez!"}




# 5. Reflection 
# * What parts of your strategy worked? What problems did you face? 
# In broad strokes my approach seems to have worked. Thes tests pass and the code does everything that is requested in the user stories. However, I face a 
#  problem with the instructions rather than with the learning. I didn't really understand if the driver code was just an example of something that did
# nothing and we were supposed to start from scratch, or if we were supposed to use whatever part possible of that example in our assert statements. Just to
# make it a bit uncomfortable for myself and avoid always writing my asserts the same way, I went for the latter option. I am not really happy with the 
# result and will try to make to it later and develop it a bit more, and play with it a bit
# 
# * What questions did you have while coding? What resources did you find to help you answer them?
# I went to ruby docs because I coudln't remember the equivalents of pop and push for the first element in an array
# 
# 
# 
# 
# 
# * What concepts are you having trouble with, or did you just figure something out? If so, what? 
# Like I saiud above, I only had some issues with the instructions, but I just rolled with it
# 
# 
# 
# 
# 
# * Did you learn any new skills or tricks?
# No, just refreshed shift and unshift and practiced assert a bit more
# 
# 
# 
# 
# 
# * How confident are you with each of the Learning Competencies? 
#  Ok in general, still don't know if my dev process is really based in any object oriented design principles.
# 
# 
# 
# 
# 
# * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you # find tedious?
# Due to the fact that I couldn't understand what was expected from the driver code made it a bit tedious, but that could be something on me, and not on
# the challenge itself
# 
# 
# 
# 

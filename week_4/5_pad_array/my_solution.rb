# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Angela Kosek.

# 1. Pseudocode
# What is the input? The input is an undetermined array
# What is the output? (i.e. What should the code return?) That same array but padded to the argument passed
# What are the steps needed to solve the problem?

# Array#pad!
# define a method that accepts an argument and sets preset value of an element to nil
# compare argument to array length
# add values to array until its length is equal to the argument passed

# Array#pad
# define a method that accepts an argument and sets preset value of an element to nil
#create new array, identical to original array
# compare argument to new array length
# add values to new array until its length is equal to the argument passed


# 2. Initial Solution
# class Array
#   def pad!(min_size, value = nil)
#     if self.length < min_size
#       (min_size - array.length).times.do 
#       self << value
#     else
#     self
#     end
#   end
# end

  
# class Array
#   def pad(min_size, value = nil)
#     new_array = array.new(self)
#     if new_array.length < min_size
#       (min_size - new_array.length).times.do 
#       new_array << value
#     else
#     new_array
#     end
#   end
# end

# ALAN
# class Array

# 	def pad! (needed_length, pad_value=nil)
# 		while self.length < needed_length
# 			self << pad_value
# 		end
# 		self
# 	end

# 	def pad (needed_length, pad_value=nil)
# 		new_array = self.dup
# 		while new_array.length < needed_length
# 			new_array << pad_value
# 		end
# 		return new_array
# 	end
# end

# 3. Refactored Solution

# class Array
#   	def pad!(min_size, value = nil)
#     	until self.length = min_size
#     		self << value
#     	end
#     	self
#    	end

# 	def pad(min_size, value = nil)
#     	new_array = array.new(self)
#     	until new_array.length = min_size
#     		new_array << value
#     	end
# 	end
# end


class Array
    def pad!(min_size, value = nil)
    	while self.length < min_size
    		self << value
    	end
    	self
   	end

	def pad(min_size, value = nil)
    	new_array = self.dup
    	while new_array.length < min_size
    		new_array << value
    	end
	return new_array
  end
end

# 4. Reflection 


# * What parts of your strategy worked? What problems did you face?    
#My strategy worked in that the syntax was correct and in theory it sounded good but when i ran the spec I failed all tests but one.
#
#
#
#
# * What questions did you have while coding? What resources did you find to help you answer them?  
# My question was why my tests where failing if my syntax was correct so I checked out how other people in the cohort had donde it.
# I saw Alan Florendo's solution, which had a pretty similar structure but used a while loop. Therefore a changed from an if statement and tried out
# what happened with while and until loops.
#
#
# * What concepts are you having trouble with, or did you just figure something out? If so, what?  
# I thought that the parentheses in a method were used to establish input arguments but in here we used it to determine the preset value of an element
# to be inserted ina an array. That leaves me thinking what other things could I potentially put in there.
#
#
#
# * Did you learn any new skills or tricks?
# I learned the dup method, and exercised while loops and the "<<" operation
#
#
#
#
# * How confident are you with each of the Learning Competencies? 
# I am pretty comfortable with all the learning. I had some trouble understanding what exactly the methods were supposed to do, which in turn made
# made pseudocding a bit more difficult than usual.
#
#
#
# * Which parts of the challenge did you enjoy?# * Which parts of the challenge did you find tedious?
#I enjoyed the pairing and everything went down uneventfully. It wasn't dull or exciting, just ok.
#
#
#
#
#
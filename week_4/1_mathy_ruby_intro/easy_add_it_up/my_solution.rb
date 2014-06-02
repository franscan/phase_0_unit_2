# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself, don't wanna be all by myyyseeeeelf

# 1. Pseudocode
# THis was the message returned by the failed test
# rspec ./array_total_spec.rb:7 # total is defined as a method
# rspec ./array_total_spec.rb:11 # total requires a single argument
# rspec ./array_total_spec.rb:15 # total returns the correct total of array 1
# rspec ./array_total_spec.rb:19 # total returns the correct total of array 2
# rspec ./array_total_spec.rb:28 # sentence_maker is defined as a method
# rspec ./array_total_spec.rb:32 # sentence_maker requires a single argument
# rspec ./array_total_spec.rb:36 # sentence_maker returns the grammatically correct sentence of the first sentence
# rspec ./array_total_spec.rb:40 # sentence_maker returns the grammatically correct sentence of the second sentence

# What is the input?
# The input will be the arrays contained in rspec array_total_spec.rb
# What is the output? (i.e. What should the code return?)
# The code should return the sum of all the numbers contained in the numeric array in the first case, and a sentence constructed with all the 
# elements of the string array in the second
# What are the steps needed to solve the problem?
# We need to create two methods, total and sentence_maker.
# Total method:
# use reduce method reduce array addition operation
# sentence_maker method:
# 




# 2. Initial Solution
def total(array1)
array1.reduce(:+)
end
def sentence_maker(array1)
sentence = array1.join(" ")
sentence.capitalize + "."
end
# 3. Refactored Solution



# 4. Reflection 

#What questions did you have while coding? What resources did you find to help you answer them?
#I knew I could get the sum and concatenations done with a loop but I was sure there had to be a method for it, so I could
#start brief from the get go and avoid refactoring. So i resorted to Ruby docs, and it took a while but I found the reduce and join methods.
#

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#I'm having a bit of trouble getting the syntax just right
#
#
#Did you learn any new skills or tricks?
#I learned the reduce and join methods!
#
#
#How confident are you with each of the Learning Competencies?
#I think I'm ok, some more practice to see how reduce behaves would be fine. The only downside is that one of the learning competencies
#were each method, if/else and loops and I didn't use them.
#
#Which parts of the challenge did you enjoy? Which parts of the challenge did you find tedious?
#I was frustrated when I kept making mistakes on my syntax, but it was beautiful when it ran smoothly and said 8 examples, no fails!
#
#
# 
# 
# 
# 
# 
# 
# 
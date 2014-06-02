# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# The input is an array of scores
# # What is the output? (i.e. What should the code return?)
# The code should return the grade resulting from the average of all the scores contained in the array
# # What are the steps needed to solve the problem?
# 1) define get_grade
# 2) create a method to obtain the average of the scores
# 3) create a loop to assign a grade to the obtained average

# 2. Initial Solution
def get_grade(array1)
  array_average = array1.reduce(:+)/array1.length
    if array_average >= 90
    	return "A"
    elsif array_average >= 80
    	return "B"
    elsif array_average >= 70
    	return "C"
    elsif array_average >= 60
    	return "D"
    elsif array_average >= 50
    	return "E"
    else
    	return "F"
    end
end



# 3. Refactored Solution

def get_grade(array1)
  array_average = array1.reduce(:+)/array1.length
    case array_average
    when 90..100
    "A"
    when 80..90
    "B"
    when 70..80
    "C"
    when 60..70
    "D"
    when 50..60
    "E"
    else
	"F"
    end
end

# 4. Reflection 
# # * What parts of your strategy worked? What problems did you face?    
# I started out with my refactored version but it didn't work so i wen't back to the extended version which i knew would work. With the exercise done I
# gave it another try and managed to get the refactored version working


# # * What questions did you have while coding? What resources did you find to help you answer them?  
# The question I had was why my refactored version was returning all F and not recognizing the intervals in my loop.
# With ruby labs I found out that my mistake was typing "when 100..90" instead of "90..100"




# # * What concepts are you having trouble with, or did you just figure something out? If so, what?  
# No trouble with concepts here, just with syntax.




# # * Did you learn any new skills or tricks?
# I hones my syntax I guess.




# # * How confident are you with each of the Learning Competencies? 
# Pretty confident, once again I didn't use each.




# # * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you find tedious?
# I enjoyed all of it, it was particularly satisfactory because I had skipped this same exercise in the ruby labs before.









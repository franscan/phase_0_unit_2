# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? Input is an integer
# What is the output? (i.e. What should the code return?) Output is the same integer, comma separated, as a string. 
# What are the steps needed to solve the problem?
# 1) turn integer into string
# 2) reverse it
# 3) divide into array with chunks of three
# 4) add a coma to each value
# 5) join
# 6) reverse again

# 2. Initial Solution
# def separate_comma(num)
# 	if num <= 1000
# 		return num
# 	else
# 		array = num.to_s.reverse.chars
# 		array2 = array.each_slice(3)
# 		new_num = array2.map{|i|i+","}.join.reverse
# 		return new_num
# 	end
# end


# 3. Refactored Solution


def separate_comma(num)
	if num < 1000
		new_num = num.to_s
		return new_num
	else
		new_num = num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
		return new_num
	end
end


# 4. Reflection 
# * What parts of your strategy worked? What problems did you face?    
# Nothing worked, only the part regarding not putting commas if the integer was smaller than 1000. 
#
#
#
#
# * What questions did you have while coding? What resources did you find to help you answer them?  
# I knew what I wanted to do, but not necessarily how, so I researched for the necessary methods. I eventually found them but I couldn't work out how to
# combine them and my solution at no point worked. That being the case, I ended up searching the Internet for someone else's solution (# http://codereview.
# stackexchange.com/questions/28054/separate-numbers-with-commas-in-ruby), which was similar but apparently the syntax is working in a different way
# because this time all the tests passed
#
#
# * What concepts are you having trouble with, or did you just figure something out? If so, what?  
# At first I had some trouble trying to figure out what would be the best way to approach the problem, and once I figured that out I had trouble
# implementing my idea. Sadly, I couldn't find a way around it like I said before.
#
#
#
# * Did you learn any new skills or tricks?
# I learnt about the map method and got practice on the each_slice method
#
#
#
#
# * How confident are you with each of the Learning Competencies? 
# I'm not very confident. I understand all the methods, or at least I believe I do, but when I try to put them into practice, the tests fail. So there is
# something further I need to learn on how to use them.
#
#
#
# * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you find tedious?
# This one wasn't that enjoyable, I felt like it was more frustrating than challenging.
#
#
#
#

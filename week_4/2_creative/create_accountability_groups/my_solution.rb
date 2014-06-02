# U2.W4: Create Accountability Groups


# I worked on this challenge initially by myself, then got some tutoring and finally a couple of recommendations during a meetup

# 2. Pseudocode

# Input: Array of strings
# Output: Three new arrays with sets or groups of four values reflecting accountability groups 
# # Steps:
# 1) crete a new array for unit1 that is ordered differently
# 2) if array is divisible by four just slice array in groups of four
# 3) if array is divisible by four remainder 3 slice array in groups of four and reassign remainders
# 4) if array is divisible by four remainder 2 slice array in groups of four and reassign remainders
# 5) if array is divisible by four remainder 1 slice array in groups of four and reassign remainders
# 6) repeat steps 1-5 for unit2
# 6) repeat steps 1-5 for unit3
# 7) create hash grouping the units
# 8) return hash

# 3. Initial Solution

# salamanders = ["Adrian Tawadros", "Alan Jameson", "Andrew Adams", "Angela Kosek", "Darrell Jones", "Francisco Scala", "Isaac Keith", "Ismail Kalimi", "James Miller", "James Walker", "Jeremy Wong", "Jonathan Young", "Joseph Webb", "Maddison Brusman", "Marek Pyczkowski", "Max Diener", "Praniti Sinha", "Quy Tran", "Ravi Patel", "Ryan Spencer", "Samuel Dominic Kirn Clements", "Sara Chen", "Spencer Zhang", "Steve Loar", "Tanner Blumer", "david hwang"]

# def group_maker(array)
	
# 	unit1 = array.dup.shuffle
# 	if unit1.length%4 == 0
# 		unit1 = unit1.each_slice(4).to_a
# 	elsif unit1.length%4 == 1
# 		unit1 = unit1.each_slice(4).to_a
# 		last_group = unit1.pop
# 		unit1[0] << last_group[0]
# 	elsif unit1.length%4 == 2
# 		unit1 = unit1.each_slice(4).to_a
# 		unit1[0] + unit1.last
# 		unit1[1] + unit1.last
# 	elsif unit1.length%4 == 3
# 		unit1 = unit1.each_slice(4).to_a
# 		unit1[0] + unit1.last
# 		unit1[1] + unit1.last
# 		unit1[2] + unit1.last
# 	else
# 		return "This part of the loop should never run"
# 	end


# 	unit2 = array.dup.shuffle
# 	if unit2.length%4 == 0
# 		unit2 = unit2.each_slice(4).to_a
# 	elsif unit2.length%4 == 1
# 		unit2 = unit2.each_slice(4).to_a
# 		unit2[0] + unit2.last
# 	elsif unit2.length%4 == 2
# 		unit2 = unit2.each_slice(4).to_a
# 		unit2[0] + unit2.last
# 		unit2[1] + unit2.last
# 	elsif unit2.length%4 == 3
# 		unit2 = unit2.each_slice(4).to_a
# 		unit2[0] + unit2.last
# 		unit2[1] + unit2.last
# 		unit2[2] + unit2.last
# 	else
# 		return "This part of the loop should never run"
# 	end


# 	unit3 = array.dup.shuffle
# 	if unit3.length%4 == 0
# 		unit3 = unit3.each_slice(4).to_a
# 	elsif unit3.length%4 == 1
# 		unit3 = unit3.each_slice(4).to_a
# 		unit3[0] + unit3.last
# 	elsif unit3.length%4 == 2
# 		unit3 = unit3.each_slice(4).to_a
# 		unit3[0] + unit3.last
# 		unit3[1] + unit3.last
# 	elsif unit3.length%4 == 3
# 		unit3 = unit3.each_slice(4).to_a
# 		unit3[0] + unit3.last
# 		unit3[1] + unit3.last
# 		unit3[2] + unit3.last
# 	else
# 		return "This part of the loop should never run"
# 	end


# accountability_groups = {:"Unit1" => unit1,
#                          :"Unit2" => unit2,
#                          :"Unit3" => unit3}

# return accountability_groups

# end

# group_maker(salamanders)


# 4. Refactored Solution


salamanders = ["Adrian Tawadros", "Alan Jameson", "Andrew Adams", "Angela Kosek", "Darrell Jones", "Francisco Scala", "Isaac Keith", "Ismail Kalimi", "James Miller", "James Walker", "Jeremy Wong", "Jonathan Young", "Joseph Webb", "Maddison Brusman", "Marek Pyczkowski", "Max Diener", "Praniti Sinha", "Quy Tran", "Ravi Patel", "Ryan Spencer", "Samuel Dominic Kirn Clements", "Sara Chen", "Spencer Zhang", "Steve Loar", "Tanner Blumer", "david hwang"]

def group_maker(array)
	
	unit1 = array.dup.shuffle
	if unit1.length%4 == 0
		unit1 = unit1.each_slice(4).to_a
	elsif unit1.length%4 == 1
		unit1 = unit1.each_slice(4).to_a
		last_group = unit1.pop
		unit1[0] << last_group[0]
	elsif unit1.length%4 == 2
		unit1 = unit1.each_slice(4).to_a
		last_group = unit1.pop
    	last_element = last_group.pop
        unit1[0] << last_element
        last_element2 = last_group.pop
        unit1[1] << last_element2
	elsif unit1.length%4 == 3
		unit1 = unit1.each_slice(4).to_a
	end


	unit2 = array.dup.shuffle
	if unit2.length%4 == 0
		unit2 = unit2.each_slice(4).to_a
	elsif unit2.length%4 == 1
		unit2 = unit2.each_slice(4).to_a
		last_group = unit2.pop
		unit2[0] << last_group[0]
	elsif unit2.length%4 == 2
		unit2 = unit2.each_slice(4).to_a
		last_group = unit2.pop
    	last_element = last_group.pop
        unit2[0] << last_element
        last_element2 = last_group.pop
        unit2[1] << last_element2
	elsif unit2.length%4 == 3
		unit2 = unit2.each_slice(4).to_a
	end


	unit3 = array.dup.shuffle
	if unit3.length%4 == 0
		unit3 = unit3.each_slice(4).to_a
	elsif unit3.length%4 == 1
		unit3 = unit3.each_slice(4).to_a
		last_group = unit3.pop
		unit3[0] << last_group[0]
	elsif unit3.length%4 == 2
		unit3 = unit3.each_slice(4).to_a
		last_group = unit3.pop
    	last_element = last_group.pop
        unit3[0] << last_element
        last_element2 = last_group.pop
        unit3[1] << last_element2
	elsif unit3.length%4 == 3
		unit3 = unit3.each_slice(4).to_a
	end

accountability_groups = {:"Unit1" => unit1,
                         :"Unit2" => unit2,
                         :"Unit3" => unit3}

return accountability_groups

end

group_maker(salamanders)





# 1. DRIVER TESTS GO BELOW THIS LINE




# 5. Reflection 

# # * What parts of your strategy worked? What problems did you face? * What questions did you have while coding? What resources did you find to help you 
# answer them? * What concepts are you having trouble with, or did you just figure something out? If so, what? * Did you learn any new skills or tricks?
# * How confident are you with each of the Learning Competencies? # * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you 
# find tedious?
# I started out with most of my code not working, it was pretty terrible. I was able to get a working version but I feel that a class will probably be a 
# more practical way to go, I hadn't read much about classes when I did this exercise. This is not a very advanced piece of code so naturally it didn't 
# afford me the opportunity to pick up much new knowledge. I do look forward to coming back to it later.
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

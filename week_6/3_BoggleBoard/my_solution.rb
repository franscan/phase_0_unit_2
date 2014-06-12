# U2.W6: Create a BoggleBoard Class

# I worked on this challenge with Francisco Scala & Maddison Brusman.

# 2. ***** Pseudocode ***** 

# 1. define class BoggleBoard
# 2. initialize with grid (coordinate plain)
# 3. def create_word method that takes set of coordinates as arguments
# 4. use map method to retrieve a set of characters from array using the 
#     coordinates passed as arguments
# 5. define get_row method that takes row number as argument
# 6. access index using row number that's passed from as argument
# 7. def get_col method that takes a number as an argument
# 8. use map method to iterate through rows and retrieves from each one of them
#    the character located in the column index position corresponding to the number
#    that is passed as an argument

# 3. ***** Initial Solution ***** 

# class BoggleBoard
# 	def initialize(grid)
# 	    @grid = grid
# 	end
	
# 	def create_word(*coords)
#       coords.map { |coord| @grid[coord.first][coord.last]}.join("")
#   end
	
# 	def get_row(row)
#       @grid[row]
#   end
  
#   def get_col(col)
#       @grid.map { |row| row[col] } 
#   end
# end
 
 
# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]
        
# boggle_board = BoggleBoard.new(dice_grid)

# p boggle_board.get_row(1)
# p boggle_board.get_col(1) 
# p boggle_board.create_word([2,1],[1,1],[1,2],[0,3])
# p boggle_board.create_word([3,2]) 

# 4. ***** Refactored Solution ***** 

class BoggleBoard
	def initialize(grid)
	    @grid = grid
	end
	
	def create_word(*coords)
      coords.map { |coord| @grid[coord.first][coord.last]}.join("")
  end
	
	def get_row(row)
      @grid[row]
  end
  
  def get_col(col)
      @grid.map { |row| row[col] } 
  end
end
 


# 1. ***** DRIVER TESTS GO BELOW THIS LINE ***** 
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
        
boggle_board = BoggleBoard.new(dice_grid)

p boggle_board.get_row(1) == ["i", "o", "d", "t"]
p boggle_board.get_col(1) == ["r", "o", "c", "a"]
p boggle_board.create_word([2,1],[1,1],[1,2],[0,3]) == "code"
p boggle_board.create_word([3,2]) == "k"


# 5. ***** Reflection ***** 
# * What parts of your strategy worked? What problems did you face?    
# We did not face any problems. The original code was not exceedingly complicated so it was not overwhelming to turn into a class. Moreover, Maddison had an 
# excellent grasp on everything we were doing, so any doubts I had were promptly cleared by him.
#
#
#
# * What questions did you have while coding? What resources did you find to help you answer them?  
# 
#
#
#
#
# * What concepts are you having trouble with, or did you just figure something out? If so, what?  
#
#
#
#
#
# * Did you learn any new skills or tricks?
# No new skills or tricks, just some practice on the competencies, and on map and join methods.
#
#
#
#
# * How confident are you with each of the Learning Competencies? 
#  More comfortable with  accesinf and traversing neste data structures. On the class creating and use of instance variable my confidence variates
# on the complexity of the challenge and the specifics of everything the class is supposed to do and contain.
#
#
#
# * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you find tedious?
# This was a pretty brief challenge, so I wouldn't point out specificly any parts as brimming with fun or loaded with boredom :) 
#
#
#
#





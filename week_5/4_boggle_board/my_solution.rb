# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge partly with Ravi Patel and partly by myself

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# Input: A nested array and a row number
# Output: All the elements in the requested row
# # Steps: Define a method that takes a nested array and a number as arguments and return the array element located in the position equal to the number
# passed as an argument

# Initial Solution


def get_row(board, row)
	return board[row]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_row(boggle_board, 0) == ["b", "r", "a", "e"]
p get_row(boggle_board, 1) == ["i", "o", "d", "t"]
p get_row(boggle_board, 2) == ["e", "c", "l", "r"]
p get_row(boggle_board, 3) == ["t", "a", "k", "e"]

#-------------------------------------------------------------------------------

# Part 2: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Input: A nested array and a column number
# Output: All the elements in the requested column
# # Steps: Define a method that takes a nested array and a number as arguments and returns an array formed by the subarray elements
# located in the index position equal to the number passed as an argument
# Initial Solution


def get_col(board, col)
	column = board[0][col], board[1][col], board[2][col], board[3][col]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_col(boggle_board, 0) == ["b", "i", "e", "t"]
p get_col(boggle_board, 1) == ["r", "o", "c", "a"]
p get_col(boggle_board, 2) == ["a", "d", "l", "k"]
p get_col(boggle_board, 3) == ["e", "t", "r", "e"]

# Reflection 
# # * What parts of your strategy worked? What problems did you face? * What questions did you have while coding? What resources did you find to help you 
# answer them? * What concepts are you having trouble with, or did you just figure something out? If so, what? * Did you learn any new skills or tricks?
# * How confident are you with each of the Learning Competencies? # * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you 
# find tedious?
#
# Initially we got stuck with Ravi thinking we needed to work on the base of only one argument (I still don't know if that is the case or not) but when I 
# came back I had paired on an exercise of week 6 where we had to work the boggle board as a class. Therefore, I decided I would solve this one without
# using a class, and went ahead and used two arguments. From thereon, the solution presented itself quite straightforwardly (a word that doesn't sound
# very straightforward itself).
#
#
#
#
#
#
#
#

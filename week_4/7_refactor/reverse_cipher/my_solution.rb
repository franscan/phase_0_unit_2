# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) #defines a variable that accepts a sentence as an argument
    alphabet = ('a'..'z').to_a #defines a variable that contains an array with all the letters of the alphabet
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #this line defines a new hash "cipher" which will contain the equivalencies of coded and decoded
    # characters. This is achieved with the zip method which creates an array out of whatever argument we input and then merges that new array with self
    # In this case the argument is alphabet rotate count 4, which means the new array will be comprised by the alphabet but starting in th letter 'e'
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #creates an array comprised by a number of special characters
    
    original_sentence = sentence.downcase #creates a variable in which all of the sentence passed is changed into lower case
    encoded_sentence = [] #creates a new empty array
    original_sentence.each_char do |element| #starts a loop that will iterate through each character of original_sentence
      if cipher.include?(element) #if said character is in the cipher hash it will be changed to the rotated value and pushed into 'encoded_sentence'
        encoded_sentence << cipher[element]
      elsif element == ' '#otherwise, if what we meet is a space, replace it randomly with any of the symbols in spaces array
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element #finally, if it isn't neither of them, the original character will be passed into the encoded sentence, without encoding it
      end
     end
    
    return encoded_sentence.join #this takes all the elements in the array and turns them into a string
end


# Questions:
# 1. What is the .to_a method doing? The method "to_a" is turning the range 'a'..'z' into an array
# 2. How does the rotate method work? What does it work on? This method returns a new array by rotating self in such a way that it will start with the 
#    element that was positioned in the original array at the index number equal to the argument passed in the method.
# 3. What is `each_char` doing? 'each.char' is executing the block after it for every character contained in 'sentence'
# 4. What does `sample` do? Sample chooses a random element or elements from an array
# 5. Are there any other methods you want to understand better? Rotate and sample were the only ones that I hadn't seen before and I had to research
#    so I believe I'm ok on those. 
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? I don't know if I would call it better or worse, it is just different. My solution is
#    much briefer (not counting the fact the encoding necesarily requieres one step more than decoding) but this one would seem easier to read.
#    but it 
# 7. Is this good code? What makes it good? What makes it bad? This seems like decent code. Like I said before, it's readable and quite explanatory.
#    It could be briefer though

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? This will return almost the same everytime. The words will always will be coded in the same way but the 
# spaces will be coded randomly with any of the special characters contained in the spaces variable.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# # * What parts of your strategy worked? What problems did you face? * What questions did you have while coding? What resources did you find to help you 
# answer them? * What concepts are you having trouble with, or did you just figure something out? If so, what? * Did you learn any new skills or tricks?
# * How confident are you with each of the Learning Competencies? # * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you 
# find tedious?
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
#
#
#


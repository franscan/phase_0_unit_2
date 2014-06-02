# U2.W4: Cipher Challenge


# I worked on this challenge with: Daniel Deepak.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
  # input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",   # In order to automate this, I would assign a number to each letter of the alphabet and then use
#             "h" => "d",   # a method to add four to the key and return the appropiate value. The pro would be no need to worry 
#             "i" => "e",   # indexes since the has works a library. 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here? It is assigning the variable X to each of the characters in the string we put in.
    # found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#                             When found_match equals to true it will start running the cipher
    # cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#                   Here it is comparing the characters in the string to the characters in the hash. These variables are
#                   coded and decoded characters.
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
        # break  # Why is it breaking here?
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
                                                                                            #This is establishing as a condition that "x" matches any of
                                                                                            #the characters provided (@#$%^&*).  
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? This will take numbers between 0 and 9 inclusive and turn 
                                                                          #it into an array of numbers. Then it will check if x is included in that array
                                                                          # and if that is the case, x will be pushed in the next line to the decoded 
                                                                          #sentence.
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # What is this looking for? This is looking for characters that are not letters, numbers or any of the special characters outlined in line 55
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. This is matching any possible digit.
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#   end  
#   return decoded_sentence # What is this returning?  This is returning what Kim Jong Un is actually saying.      
# end

# Your Refactored Solution


def north_korean_cipher(coded_message)
  letters = coded_message.tr('efghijklmnopqrstuvwxyzabcd', 'a-z')
  spaces = letters.tr('@#$%^&*', " ")
  numbers = spaces.gsub!(/\d+/) { |num| num.to_i / 100 }
    if spaces =~ /\d+/
        return numbers
    else
        return spaces
    end
end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == => "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection


# * What parts of your strategy worked? What problems did you face?    
# There wasn't a lot of strategy because I paired with Daniel, who had already done the challenge so it was more of a guided pairing for me, which was still
# great, just a different kind of learning experience. He let me tackle the first part where we had to comment the initial code, just helping me out if I
# got stuck. Then for the second part he taught me about the methods he had used with the person he paired originally for the challenge and walked me
# through the basic structure of the solution. Then I polished and checked to code on my own, verifying that it worked on every test.
#
# * What questions did you have while coding? What resources did you find to help you answer them?  
# Like I said before, Daniel had already donde this challenge so he helped me along the way when I had questions or doubts.
#
#
#
#
# * What concepts are you having trouble with, or did you just figure something out? If so, what?  
#  Regular expressions have been a bit puzzling for me and the way the #each methods were donde here they confused me at first.
#
#
#
#
# * Did you learn any new skills or tricks?
# I learnt the string#tr and string#gsub methods, and i got a bit more experience with regular expressions.
#
#
#
#
# * How confident are you with each of the Learning Competencies? 
# I think I pretty much understtod everything but the initial code was a bit drowning.
#
#
#
#
# * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you find tedious?
# I enjoyed the refactoring once I understood the initial code, with which I had struggled therefore making it not so enjoyable.
#
#
#
#

 
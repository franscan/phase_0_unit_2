# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge partly with Ravi Patel, partly by myself.

# 2. Pseudocode
# Input: Getting a Credit Card number from the user
# Output: True or false depending on if the credit card is valid.
# Steps:

#Create a class called CreditCard
#Initialize check_card so we recieve a credit card number from the user
#Raise ArgumentError if check_card is not 16 digits
#Put in an array, then reverse the numbers
#Take every other number and double it
#Join new values in the array
#Split every digit and add
#Modulus 10 which should equal remainder 0 for true

# NEW PSEUDOCODE
#Create a class called CreditCard
#Initialize check_card so we recieve a credit card number from the user
#Raise ArgumentError if check_card is not 16 digits
#Put in an array, then reverse the numbers and map into integers
#New array with odd index entries, multiply each by 2
#New array with even index entries
#Join arrays, split new array, turn into integers and sum
#Modulus 10 which should equal remainder 0 for true



# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard
#   def initialize(card)
#     @card = card.to_s.split(//).reverse
#     if @card.length > 16
#       raise ArgumentError.new("Credit card number is not 16 digits")
#       elsif @card.length < 16
#       raise ArgumentError.new("Credit card number is not 16 digits")
#     end
#   end
  
#   def check_card
#     def uneven_array
#       uneven = @card.select {|x| x % 2 != 0}
#       uneven = uneven.each {|x| x*2}.join
#     end
#     def even_array
#       even = @card.select {|x| x % 2 == 0}.join
#     end
#     def final_array
#       (uneven + even).reduce(:+)
#     end
#     final = final_array % 10 == 0
#     return final
#   end
# end



# 4. Refactored Solution


class CreditCard

  def initialize(card)
    @card = card.to_s
    if @card.length != 16 then
    raise ArgumentError.new("Credit card number is not 16 digits")
    end
  end
  
  def check_card
    c_num = @card.split(//).reverse.map {|x| x.to_i}
    initial = c_num.values_at(* c_num.each_index.select {|x| x.odd?})
    uneven = initial.map {|x| x * 2}
    even = c_num.values_at(* c_num.each_index.select {|x| x.even?}) 
    final = (uneven + even).join.split(//).map {|x| x.to_i}.reduce(:+)
    (final % 10).zero?
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE

p CreditCard.new(4408041234567892).check_card == false 
p CreditCard.new(4408041234567893).check_card == true





# 5. Reflection 
# # * What parts of your strategy worked? What problems did you face? * What questions did you have while coding? What resources did you find to help you 
# answer them? * What concepts are you having trouble with, or did you just figure something out? If so, what? * Did you learn any new skills or tricks?
# * How confident are you with each of the Learning Competencies? # * Which parts of the challenge did you enjoy? # * Which parts of the challenge did  
# you find tedious?
#
# At first, nothing worked as you can see from my initial code, all the rights ideas were there but in a jumble (I started at the end of a long day, 
# NOT a good idea. I did a tutoring session in which I was asked to think step by step and slowly what each part of my code was doing. One of the things 
# I realized is that you can't use array#each to turn string elements into integer elements, as opposed to map that does. For some reason, although each 
# and map perform an iteration, #each just returned the original array although i asked for to_i. 
# Another obstacle I ran into was getting to form two new arrays, each comprised of elements corresponding to even and odd index number positions
# respectively. I had to resort to stackoverflow, where I found the following: Array.values_at(* array.each_index.select {|x| x.odd?}). I understood all 
# of it except why there is a "*" there. I need to review this and the each/map issue. I wasn't crazy about this exercise. Eventhough I got it to work,
# I saw other solutions that were much simpler to read and execute.

# U2.W4: Research Methods - WORKED BY MYSELF

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}


# Person 1's solution
def my_array_finding_method(source, thing_to_find)
    source.select {|x| x.to_s.include? thing_to_find }
end

def my_hash_finding_method(source, thing_to_find)
    new_hash = source.select {|k,v| v.to_i == thing_to_find }.flatten.delete_if {|x| x == thing_to_find}
    return new_hash
end

# Identify and describe the ruby method you implemented. 
# the method I used in this case is select which returns a new array containing all elements the original array where the condition I established was met
# In this case the condition was that whatever argument I passed be included in the given element
# In the case of the has this produced and array of arrays so I flattened it and deleted those indexes corresponding to values.

# Person 2 collect
def my_array_modification_method(source, thing_to_modify)
    source.map!{ |x| (x==/\d/ ? x+thing_to_modify : x) }
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# Here I used map which runs a block of code for each element in an array. My method returns all the elements in the array, but not as an array. 
# I couldn't get this to work so, considering I had done already an extra section of this exercise (worked on my own), I decided to move on.
#


# Person 3 sort by
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#
# Person 4 delete_if
def my_array_deletion_method(source, thing_to_delete)
    source.delete_if {|x| x.to_s.include?(thing_to_delete) == true}
end

def my_hash_deletion_method(source, thing_to_delete)
    source.delete_if {|key, value| key.include?(thing_to_delete) == true}
end

# Identify and describe the ruby method you implemented. 
# The method used in this case was delete_if, which will sift through every element or pair and delete all of those in which the condition
# evaluates to true.
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# # * What parts of your strategy worked? What problems did you face? * What questions did you have while coding? What resources did you find to help you 
# answer them? * What concepts are you having trouble with, or did you just figure something out? If so, what? * Did you learn any new skills or tricks?
# * How confident are you with each of the Learning Competencies? # * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you 
# find tedious?
# 
# In the first section (finding methods) the first of them was relatively simple but the second one proved to be tricky. Initially I got an error when 
# trying to use the values of a pair as my condition so I tried the invert method but that didn't work. The To_i did the trick but then I came across
# the problem that my has had not changed into an array that had a subarray for each pair. That was solved with the flatten method and then cleaned up with
# delete_if so that only the keys were returned.
# 
# As to the modification methods, it works for the most part except for the fact that I cant turn the elements back into an array, like I stated before. 
# Furthermore, I tried to use an if statement with this method and kept on getting an error, so I resorted to stack overflow, which is where I found that
# syntax -array#map { |x| (x=="b" ? x+"!" : x) }  # ["a", "b!", "c"]-. I can understand how it is working in this particular case, but it would be 
# good to check out in what other cases and how I can apply "?" and ":". I learned more about the syntax in a method's conditions or block. As usual I was
# frustrated than bored at certain parts of the exercise.
#
#
#
#
#
#
#


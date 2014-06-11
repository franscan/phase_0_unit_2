# U2.W6: Drawer Debugger


# I worked on this challenge with Molly Huerster


# 2. Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
    # @discarded_silverware = []
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    # @discarded_silverware << item
    @contents.delete(item)
  end

  def dump  # what should this method return?
    # @discarded_silverware = @contents.dup
    @contents = []
    puts "Your drawer is empty."
  end

  # def fill
  #   @contents = @discarded_silverware
  #   puts "All your silverware is now in the drawer"
  # end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean
    if @clean == true
      puts "The #{type} is clean"
    else
      puts "The #{type} is dirty"
    end
    @clean
  end
  
  def clean_silverware
    puts "The #{type} is now clean"
    @clean = true
  end
  
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
knife1.eat

#BONUS SECTION
fork = Silverware.new("fork 2")
puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
Second_Drawer = Drawer.new
coffee_spoon = Silverware.new("Coffee Spoon")
dessert_fork = Silverware.new("Dessert Fork")

Second_Drawer.add_item(coffee_spoon)
Second_Drawer.add_item(dessert_fork)
p Second_Drawer.contents == [coffee_spoon, dessert_fork]

Second_Drawer.remove_item(coffee_spoon)w
p Second_Drawer.contents == [dessert_fork]

Second_Drawer.dump
p Second_Drawer.contents == []

def assert
  if yield
    p "this test passed!"
  else
    p "false"
  end
end

assert do
  salad_fork = Silverware.new("salad fork")
  Second_Drawer.add_item(salad_fork)
  salad_fork.eat
  salad_fork.clean == false
end


assert do
  tea_spoon = Silverware.new("Tea spoon")
  tea_spoon.eat
  tea_spoon.clean_silverware
  tea_spoon.clean == true
end

p Second_Drawer.remove_item



# 5. Reflection 

# * What parts of your strategy worked? What problems did you face? 
# The work we did related to the specifics of the challenges worked pretty well from the get go, we did ran into some doubts when trying to some additional
# things, such as method that filled the drawer or devising a way to keep track of the silverware we take out of the drawer. Therefore, we decided not to
# complicate the code unnecesarily and stuck to debugging. We did go for the bonus though.
#
#
#
# * What questions did you have while coding? What resources did you find to help you answer them?
# I had some doubts regarding asserts statements, since I was pairing I got my answers from Molly, who knew her stuff on the issue.
#
#
#
#
#
# * What concepts are you having trouble with, or did you just figure something out? If so, what? 
# Together with other challenges, this took me closer to understanding attr reader
#
#
#
#
#
# * Did you learn any new skills or tricks?
# Not that I can think of
#
#
#
#
#
# * How confident are you with each of the Learning Competencies? 
# I'm getting more comfortable with error messages and testing but I'm still a bit rickety on defining a class' responsibility.
#
#
#
#
#
# * Which parts of the challenge did you enjoy? # * Which parts of the challenge did you # find tedious?
# I enjoyed all of it, it would have been even better if we had time to play with the added features but we got to do the little bonus so that was neat
# I tend to have a good time in peer pairing sessions so I can't say I had a tedious part.
#
#
#
#

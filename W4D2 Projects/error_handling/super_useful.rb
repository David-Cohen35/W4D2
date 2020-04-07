# PHASE 2
def convert_to_int(str)
  begin 
    int = Integer(str)
  rescue ArgumentError
    puts "Cannot convert to integer"
  ensure
    int ||= nil 
  end

  int
end

# p convert_to_int('g')

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == 'coffee'
    raise CoffeeError.new("It's a coffee")
  else
    raise "I definitely can't eat this"
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue CoffeeError # somethingError
    puts "Try different fruit"
    retry
  end
end  

p feed_me_a_fruit
# Overview

# Sometimes when an error is thrown we would like to try the failing operation again (hopefully with different input :wink:). This is often the case with user input and text parsing. Let's try to make friendly monster happy by allowing us to retry feeding it a fruit when certain errors are thrown.

# Instructions

# Friendly monster is really friendly and really likes coffee, so he'd like to give us another try, but only when we give him "coffee".

# First, handle the errors being thrown by #reaction in #feed_me_a_fruit.

# Note that #reaction throws errors receiving an argument that is not in FRUITS. Next, let's differentiate the errors thrown so our calling function, #feed_me_a_fruit can try to feed friendly monster again, but only when they've given it coffee.

# Now that we have different error types being thrown by #reaction we can do a little conditional logic in #feed_me_a_fruit to retry the failing block of code again, but only if it is a coffee-related error.



# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end



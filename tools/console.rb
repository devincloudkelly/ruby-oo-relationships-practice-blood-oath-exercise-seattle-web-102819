require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


## cults

flatiron = Cult.new("Flatiron", "Seattle", 2019, "Code or die")
starbucks = Cult.new("Starbucks", "Seattle", 1995, "Dark roast is the best roast")
mcdonalds = Cult.new("McDonalds", "Chicago", 1950, "Would you like a side of diabetes with that")


## followers

natali = Follower.new("Natali", 29, "one day at a time")
devin = Follower.new("Devin", 32, "no, this isn't a cult. I'm sure of it.")
bob =Follower.new("Bob", 55, "I love cults")
stacy = Follower.new("Stacy", 21, "where am i?")

## bloodoaths
bo_1 = BloodOath.new(natali, flatiron)
bo_2 = BloodOath.new(devin, flatiron)
bo_3 = BloodOath.new(bob, mcdonalds)
bo_4 = BloodOath.new(stacy, starbucks)
bo_5 = BloodOath.new(bob, flatiron)
bo_6 = BloodOath.new(bob, starbucks)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

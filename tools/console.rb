# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

cheapgym= Gym.new("cheapgym")
expensivegym = Gym.new("expensivegym")
fancygym = Gym.new("fancygym") 

cheap = Membership.new(10, cheapgym)
fancy = Membership.new(15, fancygym)
expensive = Membership.new(25, expensivegym)

george  = Lifter.new("George", 150, cheap)
harry = Lifter.new("harry",300, cheap)
sam = Lifter.new("sam", 100, fancy)



binding.pry

puts "Gains!"

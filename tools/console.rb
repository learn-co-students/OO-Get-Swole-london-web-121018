# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Andy", 100)
lifter2 = Lifter.new("Roger", 75)
lifter3 = Lifter.new("Rafa", 60)
lifter4 = Lifter.new("Novak", 82)
lifter5 = Lifter.new("Sascha", 41)

gym1 = Gym.new("Virgin Active")
gym2 = Gym.new("Pure Gym")
gym3 = Gym.new("Gymbox")

membership1 = Membership.new(gym1,lifter1, 25)
membership2 = Membership.new(gym2,lifter2, 50)
membership3 = Membership.new(gym3,lifter3, 45)
membership4 = Membership.new(gym1,lifter4, 30)
membership5 = Membership.new(gym2, lifter5, 50)
membership6 = Membership.new(gym3, lifter1, 80)
membership7 = Membership.new(gym1, lifter2, 30)
membership8 = Membership.new(gym2, lifter3, 25)
membership9 = Membership.new(gym3, lifter4, 40)




binding.pry

puts "Gains!"

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
g1 = Gym.new("gym1")
g2 = Gym.new("gym2")
g3 = Gym.new("gym3")

l1 = Lifter.new("A", 40)
l2 = Lifter.new("B", 70)
l3 = Lifter.new("C", 100)
l4 = Lifter.new("D", 150)


m1 = Membership.new(10,g1,l3)
m2 = Membership.new(30,g3,l2)
m3 = Membership.new(20,g2,l1)
m4 = Membership.new(10,g1,l1)
binding.pry

puts "Gains!"

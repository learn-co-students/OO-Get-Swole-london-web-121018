# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Joss", 10)
l2 = Lifter.new("Trizzy", 200)
l3 = Lifter.new("Jonny", 400)

g1 = Gym.new("Global Gym")
g2 = Gym.new("Average Joe's")
g3 = Gym.new("Anytime Fitness")

m1 = Membership.new(l1, g1, 50)
m2 = Membership.new(l1, g2, 30)
m3 = Membership.new(l2, g3, 40)
m4 = Membership.new(l3, g3, 40)
m5 = Membership.new(l1, g3, 30)

binding.pry

puts "Gains!"

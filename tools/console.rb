# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

topgym = Gym.new('topgym',99)
medgym = Gym.new('medgym',69)
lowgym = Gym.new('lowpgym',59)
deji = Lifter.new('Ayodeji', 111119)
jimbob = Lifter.new('Jimbobby', 4)
arnold = Lifter.new('Gov',100)
mem1 = Membership.new('basic package', 40,topgym)
mem2 = Membership.new('better package', 50,medgym)
mem3 = Membership.new('best package', 39,lowgym)
deji.add_membership(mem1)
deji.add_membership(mem3)
jimbob.add_membership(mem2)
#test complete 



binding.pry

puts "Gains!"

class Lifter
  @@all =[]
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

 #  Get a list of all lifters
def self.all
  @@all
end
 # - Get a list of all the memberships that a specific lifter has
 def memberships
   Membership.all.select{|membership|membership.lifter == self}
 end
 # - Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    memberships.map{|m| m.gym}
  end
 # - Get the average lift total of all lifters
 def self.average_lift
   total = Lifter.all.map{|lift| lift.lift_total }
   total.inject(0){|sum,x| sum + x }/Lifter.all.count.to_f
 end

 #
 # - Get the total cost of a specific lifter's gym memberships
 def total_cost_membership
   total=memberships.map{ |c| c.cost}
   total.inject(0){|sum,x| sum + x }

 end
 #
 # - Given a gym and a membership cost, sign a specific lifter up for a new gym
def signup(cost,gym)
    Membership.new(cost,gym,self)
end
end

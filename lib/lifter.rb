class Lifter
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self

  end

  @@all = []

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.select {|membership| membership.gym}
  end

  def self.lift_total
    all_lift_total = 0
    self.all.each {|lifter| all_lift_total += lifter.lift_total}
    all_lift_total
  end

  def self.average_lift_total
    self.lift_total/self.all.length
  end

  def membership_cost
    gym_cost = 0
    self.memberships.each {|membership| gym_cost += membership.cost}
    gym_cost
  end

  def signup (cost, gym)
    Membership.new(cost, gym, self)
  end

end

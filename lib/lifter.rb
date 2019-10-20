class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def memberships
    Membership.all.select {|membership| membership.user == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.lift_total
    lift_tot = 0
    self.all.each {|lifter| lift_tot += lifter.lift_total}
    lift_tot
  end

  def self.average_lifter
    self.lift_total.to_f/self.all.length
  end

  def total_cost
    tot_cost = 0
    memberships.each {|membership| tot_cost += membership.cost}
    tot_cost
  end

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end
end

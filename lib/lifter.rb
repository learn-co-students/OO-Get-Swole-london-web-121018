class Lifter

  @@all = []

  attr_accessor :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym }
  end

  def self.average_lift_total
    running_lift_total = 0
    total_lifters = Lifter.all.length
    Lifter.all.each do |lifter|
      running_lift_total += lifter.lift_total
    end
    running_lift_total / total_lifters
end

  def total_cost_of_memberships
    total_cost = 0
    memberships.each do |membership|
    total_cost += membership.cost
    end
    total_cost
  end

  def sign_up_lifter(gym, cost)
    Membership.new(gym, cost, self)
  end

end

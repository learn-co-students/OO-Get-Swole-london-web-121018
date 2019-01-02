class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}

  end

  def lifters
    memberships.map{|membership| membership.lifter}
  end
  def total_lift
    # Get the combined lift total of every lifter
    # has a membership to that gym
    # sum = 0
    # lifters.each{|lift_total| sum += lift_total}
    # sum.to_f
    total = lifters.map{|lift| lift.lift_total }
    # total.inject(0){|sum,x| sum + x}
    total.inject(:+)

  end
end

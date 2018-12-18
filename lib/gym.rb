class Gym
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    self.memberships.select{|membership| membership.lifter}
  end

  def lifter_names
    self.lifters.select {|lifter| lifter.name}
  end

  def total_lift_total
    combined_lift = 0
    self.lifters.each {|lifter| combined_lift += lifter.lift_total}
    combined_lift
  end

end

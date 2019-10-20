class Gym
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map {|member| member.user}
  end

  def lifters_names
    lifters.map {|lifter| lifter.name}
  end

  def lifters_total
    lift_total = 0
    lifters.each {|lifter| lift_total += lifter.lift_total}
    lift_total
  end
end

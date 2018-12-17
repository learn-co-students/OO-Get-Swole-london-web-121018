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
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map {|membership| membership.lifter }
  end

  def combined_lift_total
    combined_lift_total = 0
    lifters.each do |lifter|
      combined_lift_total += lifter.lift_total
    end
    combined_lift_total
  end



end

class Gym
  attr_reader :name, :cost
  @@all = []

  def initialize(name,cost)
    @name = name
    @cost = cost
    @@all << self
  end

  def lifters
    Lifter.all.select do |lifter|
      lifter.gyms.include?(self)
    end
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lift_total
    total = 0
    lifters.each do |lifter|
        total += lifter.lift_total
      end
      total 
    end

  def self.all
    @@all
  end
end

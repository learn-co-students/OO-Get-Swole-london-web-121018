class Membership
  attr_reader :cost, :name, :gym
  @@all = []

  def initialize(name,cost,gym)
    @name = name
    @cost = cost
    @gym = gym
    @@all << self
  end

  def lifters
    Gym.all.select do |gym|
      gym.memberships.include?(self)
    end
  end

  def self.all
    @@all
  end
end

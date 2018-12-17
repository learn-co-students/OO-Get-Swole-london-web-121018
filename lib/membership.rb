class Membership
  attr_reader :cost, :all, :gym

  @@all = []

  def initialize(cost, gym)
    @cost = cost
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end




end

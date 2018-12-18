class Membership
  attr_reader :cost, :user, :gym
  @@all = []

  def self.all
    @@all
  end

  def initialize(user, gym, cost)
    @user = user
    @gym = gym
    @cost = cost
    self.class.all << self
  end
end

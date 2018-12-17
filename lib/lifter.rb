class Lifter
  attr_reader :name, :lift_total, :all, :memberships, :gym

  @@all = []
  @memberships = []
  

  def initialize(name, lift_total, memberships)
    @name = name
    @lift_total = lift_total
    @memberships = []
    @memberships << memberships
    @gym = []
    gym
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_lift
    totallift = 0
    self.all.each do |lifter|
      totallift += lifter.lift_total
    end
    totallift/self.all.count
  end

  def gym
    memberships.each do|membership|
      while @gym.include?(membership.gym) == false 
       @gym << membership.gym
      end
    end
    @gym
  end

  

  def join_gym(gym, cost)
    allmemberships = Membership.all
    membershiplevel = allmemberships.select{|membership| membership.cost == cost}
    @memberships << membershiplevel
    @memberships.flatten!
    @gym << gym
    self
  end
  
  def memberships
    @memberships.flatten
  end

  def total_cost
    totalcost = 0
    memberships.each do |membership|
      totalcost += membership.cost
    end
    totalcost
  end


end



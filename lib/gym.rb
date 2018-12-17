class Gym
  attr_reader :name, :all, :members

  @@all = []

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
    lifters = []
    Lifter.all.each do |lifter|
        lifter.gym.each do |gym|
          if gym == self
            lifters << lifter
          end
        end
      end
      lifters
  end

  def lifternames
    lifternames = []
    lifters.each do |lifter|
      lifternames << lifter.name
    end
    lifternames
  end

  def total_lift_weight
    totallift = 0
    lifters.each do |lifter|      
      totallift += lifter.lift_total
    end
    totallift
  end


end

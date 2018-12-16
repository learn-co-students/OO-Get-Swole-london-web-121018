class Lifter
  attr_reader :name, :lift_total, :gyms, :memberships
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @memberships = []
    @gyms = []
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end


  def add_membership(mem_name)
    @memberships << mem_name
  end

  def memberships
    @memberships
  end

  def gyms
    @memberships.map do |membership|
      membership.gym
    end
  end

  def self.lift_total
    @@all.sum do |lifter|
      lifter.lift_total
    end
  end

  def av_lift_total
    self.lift_total/@@all.count
  end

  def total_mem_cost
    @memberships.sum do |membership|
      membership.cost
    end
  end

  def sign_up(gym,mem)
    @gyms << gym
    @memberships << mem
  end
end

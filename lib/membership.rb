class Membership

  attr_reader :cost, :lifter, :gym

  @@all = [] # holds all instances Membership

  def initialize(lifter, gym, cost)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self # on initialize, add self-membership to all instances of Membership
  end

  def self.all # return array of all instances of Membership
    return @@all
  end

end

class Lifter

  attr_reader :name, :lift_total

  @@all = [] # holds all instances of Lifter

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self # on initialize, add self-lifter to all instances of Lifter
  end

  def memberships # returns array of all membership self-lifter has
    return Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms # returns array of all gyms self-lifter has membership to
    return memberships.map {|membership| membership.gym}
  end

  def total_memberships_cost # returns total cost of all self-lifter's memberships
    return (memberships.map {|membership| membership.cost}).sum 
  end

  def new_membership(gym, cost) # make new membership for self-lifter passing gym and cost as args and return array of all memberships 
    Membership.new(self, gym, cost)
    return memberships
  end
    
  def self.avg_lift # returns the average lift total of all Lifter
    return (Lifter.all.sum {|lifter| lifter.lift_total} / Lifter.all.length).to_f
  end

  def self.all # returns all instances of Lifter
    return @@all
  end

end

class Gym

  attr_reader :name

  @@all = [] # holds all instances of Gym

  def initialize(name)
    @name = name
    @@all << self # on initialize, add self-gym to all instances of Gym
  end
  
  def memberships # returns array of all memberships self-gym has
    return Membership.all.select {|membership| membership.gym == self}
  end

  def lifters # returns array of all lifters who have membership at self-gym
    return memberships.map{|membership| membership.lifter}
  end

  def lifter_names # returns names of all lifters who have membership at self-gym
    return lifters.map {|lifter| lifter.name}
  end

  def lift_total # returns lift total of all members at self-gym
    return (lifters.map {|lifter| lifter.lift_total}).sum
  end

  def self.all # returns all instances of Membership
    return @@all
  end

  def self.find_by_name(name) # returns gym that matches name 
    return Gym.all.find {|gym| gym.name == name}
  end

end

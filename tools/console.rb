# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym1 = Gym.new("Gold's Gym")
gym2 = Gym.new("24 hr")
gym3 = Gym.new("Planet")

david = Lifter.new("David", 225)
ash = Lifter.new("Ash", 135)
jorge = Lifter.new("Jorge", 180)

david.new_membership(gym1, 25)
david.new_membership(gym2, 35)

ash.new_membership(gym1, 25)
ash.new_membership(gym2, 35)
ash.new_membership(gym3, 45)

jorge.new_membership(gym2, 35)
jorge.new_membership(gym3, 45)

binding.pry

puts "Gains!"

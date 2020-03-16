require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

d1 = Driver.new("Vinny")
d2 = Driver.new("J-Woww")
d3 = Driver.new("Angelina")

p1 = Passenger.new("Paulie D")
p2 = Passenger.new("Snookie")
p3 = Passenger.new("The Situation")
p4 = Passenger.new("Ronnie")

r1 = Ride.new(d1, p1, "3.2")
r15 = Ride.new(d1, p4, "5.5")
r2 = Ride.new(d2, p3, "4.2")
r3 = Ride.new(d1, p2, "3.8")
binding.pry

# Put your variables here~!



require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
p1 = Passenger.new("faizah")
d1 = Driver.new("Ahsan")
r1 = Ride.new(d1, p1, 10)

p2 = Passenger.new("Josh")
d2 = Driver.new("Miles")
r2 = Ride.new(d2, p2, 3.0)

p3 = Passenger.new("Steven")
d3 = Driver.new("Nguyen")
r3 = Ride.new(d3, p3, 101)


binding.pry

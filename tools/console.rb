require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

isaac = Passenger.new("isaac")
jim = Passenger.new("jim")
jack = Passenger.new("jack")
john = Driver.new("john")
josh = Driver.new("josh")
ride_1 = Ride.new(john, isaac, 1.2)
ride_2 = Ride.new(josh, isaac, 3.4)
ride_3 = Ride.new(john, jim, 105)
ride_4 = Ride.new(john, jack, 23)

binding.pry

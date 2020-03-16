require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

tim = Passenger.new("Timothy")
steven = Passenger.new("Steven")
cooper = Passenger.new("Cooper")
josh = Driver.new("Josh")

ride_one = Ride.new(josh, tim, 10.32)
ride_two = Ride.new(josh, tim, 5.43)
ride_three = Ride.new(josh, cooper, 101)
ride_foure = Ride.new(josh, tim, 100)
binding.pry

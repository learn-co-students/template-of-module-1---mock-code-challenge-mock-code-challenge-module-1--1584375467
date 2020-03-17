require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new("Ruth")
passenger2 = Passenger.new("Alas")
driver1 = Driver.new("Obe")
driver2 = Driver.new("Carter")
driver3 = Driver.new("Henry")
ride1 = Ride.new(passenger1, driver1, 55.4)
ride2 = Ride.new(passenger2, driver2, 2.5)
ride3 = Ride.new(passenger2, driver3, 34.5)
ride4 = Ride.new(passenger1, driver1, 53.2)
ride5 = Ride.new(passenger2, driver2, 12.5)
ride6 = Ride.new(passenger2, driver3, 46.3)

binding.pry

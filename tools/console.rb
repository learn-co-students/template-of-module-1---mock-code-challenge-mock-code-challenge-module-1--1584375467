require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
william = Passenger.new("William")
chris = Passenger.new("Chris")
mike = Passenger.new("Mike")
josh = Driver.new("Josh")
ben = Driver.new("Ben")
list_passengers = [william, chris, mike]
drivers_list = [ben, josh]
ride1 = Ride.new(josh, william, 7)
ride2 = Ride.new(ben, chris, 10)
ride3 = Ride.new(ben, william, 5.3)
ride4 = Ride.new(josh, chris, 4.8)
ride5 = Ride.new(ben, mike, 101)
ride5 = Ride.new(josh, mike, 100)
binding.pry

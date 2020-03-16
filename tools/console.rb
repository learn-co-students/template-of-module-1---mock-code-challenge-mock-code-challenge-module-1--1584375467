require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


test_passenger = Passenger.new("Shaggy")
test_passenger.name

heroine = Passenger.new("Batwoman")
sidekick = Passenger.new("Robin")

test_driver = Driver.new("Scoob")
test_driver.name

hero = Driver.new("Batman")

mystery_machine = Ride.new(test_driver, test_passenger, 420) #Get your dog to drive to the store so you don't catch corona
bat_mobile = Ride.new(hero,sidekick,99)
bat_mobile2 = Ride.new(hero,sidekick,99)
bat_mobile3 = Ride.new(hero,sidekick,99)
bat_mobile4 = Ride.new(hero,heroine,69)
bat_machine = Ride.new(hero,test_passenger, 607.23)




binding.pry

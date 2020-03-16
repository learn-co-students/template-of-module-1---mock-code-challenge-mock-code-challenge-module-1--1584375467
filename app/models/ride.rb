class Ride

    @@all = []

    attr_accessor :driver, :passenger, :distance 

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all.push(self)
    end
    
    def self.all
        @@all
    end

    def self.average_distance
        miles_traveled = 0
        number_of_rides = 0
        average = 0 
        self.all.each do |ride|
            miles_traveled += ride.distance.to_f
            number_of_rides += 1
        end 
        average = miles_traveled / number_of_rides
        average
    end
  
end


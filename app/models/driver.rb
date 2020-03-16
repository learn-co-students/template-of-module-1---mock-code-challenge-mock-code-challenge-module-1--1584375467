
class Driver 

    attr_accessor :name, :passenger

    @@all = []

    def initialize(name)
        @name = name 
        @@all.push(self.name)
    end 

    def passenger_names
        #returns [] all passengers driver has driven with no repeats
        result = []
        self.rides.each do |ride|
            if !result.include?(ride.passenger.name)
                result.push(ride.passenger.name)
            end
        end
        result
    end

    def rides
        #returns [] of all rides driver has made
        result = []
        Ride.all.each do |ride|
            if ride.driver == self
            result.push(ride)
            end
        end 
        result
    end

    def self.all     #all drivers
        @@all       
    end

    def mileage_cap(distance)
        #argument of distance is float, returns [] of all drivers who have
        #driven over that mileage
        result = []
        Ride.all.each do |ride|
            if ride.distance.to_f > distance
                result.push(ride.driver.name)
            end 
        end
        result 
    end
        



end 

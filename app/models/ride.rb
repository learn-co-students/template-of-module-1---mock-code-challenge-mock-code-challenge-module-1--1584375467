class Ride
    attr_accessor(:driver, :passenger, :distance)
    
    @@all = []

    def initialize (driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all.push(self)
    end

    def passenger
        return @passenger
    end

    def driver
        return @driver
    end

    def distance
        return @distance
    end

    def self.all
        return @@all
    end 

    def self.average_distance
        all_rides = 0
        avg_ride = 0
        total_rides = @@all.count()
        @@all.each do |ride|
            all_rides += ride.distance
            avg_ride = all_rides / total_rides
        end
        return avg_ride
    end

end        

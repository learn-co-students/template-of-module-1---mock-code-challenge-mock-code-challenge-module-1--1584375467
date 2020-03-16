class Driver

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end
    
    def passenger_names 
        riders = rides.map do |ride|
            ride.passenger.name
        end
        riders.uniq
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        Ride.all.select do |ride|
            ride.distance > distance
        end
    end

end

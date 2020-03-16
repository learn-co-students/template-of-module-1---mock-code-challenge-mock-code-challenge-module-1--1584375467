class Passenger
    attr_reader :name #maybe this should be attr_reader if it shouldn't be changed

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
        total = rides.map do |ride|
           ride.distance
        end
        total.sum
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end
end



class Driver

    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def passenger_names
        p = []
        self.rides.each do |ride|
            p << ride.passenger 
        end
        p
    end

    def rides
        Ride.all.select{|p| p.driver == self}
    end

    def self.mileage_cap(distance)
        Ride.all.select{|p| p.distance > distance}
    end
end

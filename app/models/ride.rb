class Ride
    
    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total = 0
        self.all.each do |ride|
            total += ride.distance
        end
        total / self.all.size
    end
end

class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @distance = distance
        @passenger = passenger
        @all.push(self)
    end

    def self.all
        @@all
    end

    def self.average_distance
        distance=@@all.map {|ride| ride.distance}
        average = distances.reduce + distances.size
        average
    end

end

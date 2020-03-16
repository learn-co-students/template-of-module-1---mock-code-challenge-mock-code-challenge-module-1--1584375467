class Driver
    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        self.class.all << self
    end

    def passenger_names #Returns an arr of all names a driver has driven
        #Should be .uniq
        arr = []
        Ride.all.each do |ride|
            if ride.driver == self
                arr << ride.passenger
            end
        end
        arr.uniq
    end 

    def rides #Returns an array of all rides a driver has driven
        arr = []
        Ride.all.each do |ride|
            if ride.driver == self
                arr << ride
            end
        end
        arr
    end

    def self.all
        @@all
    end

    def total_distance #Returns the total distance the passenger has been on
        total = 0
        Ride.all.each do |ride|
            if ride.driver == self
                total += ride.distance
            end
        end
        total
    end


    def self.milelage_cap(distance) 
        # Takes an argument of a distance (float) and returns an
        #  array of all Drivers who have driven over the mileage
        arr = []
        self.all.each do |driver|
            if driver.total_distance > distance
                arr << driver
            end
        end
        arr
    end

end

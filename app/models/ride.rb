class Ride

    @@all=[]

    attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance=0.0)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        darr = self.all.map do |ride|
            ride.distance
        end  
        total = 0
        darr.each do |distance|
            total += distance
        end
        total / darr.count
        
    end


end
     
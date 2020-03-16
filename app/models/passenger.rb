class Passenger 

    @@all=[]

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self 
    end

    def name 
        @name
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
        
    end

    def drivers

        self.rides.map do |ride|
            ride.driver 
        end

    end

    def total_distance
        total = 0 
        self.rides.each do |ride|
            total += ride.distance 
        end
        return total
    end

    def Passenger.all
        @@all
    end

    def Passenger.premium_members 

        Passenger.all.select do |passenger|
            passenger.total_distance > 100
        end

    end 
end


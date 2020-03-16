class Passenger 

        @@all = [] 

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self.name)
    end

    def rides
        #returns [] of ride instances this person has been on
        result = []
        Ride.all.each do |ride| 
            if ride.passenger == self
                result.push(ride)
            end
        end
        result
    end

    def drivers
        #returns [] of driver instances this person has driven with 
        result = []
        Ride.all.each do |ride|
            if ride.passenger == self
                result.push(ride.driver)
            end 
        end
        result
    end 

    def total_distance
        #Returns the floating number that represents 
        #the total distance the passenger has travelled using the service
        total = 0
        Ride.all.each do |ride|
            if ride.passenger == self 
                total += ride.distance.to_f
            end 
        end 
        total.to_f
    end

    def self.all
        @@all
    end 

    def self.premium_members
        #Returns an array of all Passengers who have 
        #travelled over 100 miles in total with the service
        result = [] 
        Ride.all.each do |ride|
            if ride.distance.to_f > 100 
                result.push(ride.passenger.name)
            end 
        end
        result
    end

end


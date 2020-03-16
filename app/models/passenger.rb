class Passenger 
    attr_accessor(:name)

    @@all = []
    
    def initialize(name)
        self.name = name
        @@all.push(self)
    end
    
    def name
        return self.name
    end

    def rides
        total_rides = []
        Ride.all.each do |ride|
            if ride.passenger == self
                total_rides.push(ride)
            end
        end
        return total_rides
    end

    def drivers
        all_drivers = []
        self.rides.each do |ride|
            all_drivers.push(ride.driver)
        end
        return all_drivers
    end

    def total_distance
        total_distance = 0
        self.rides.each do |ride|
            total_distance += ride.distance
        end
        return total_distance
    end 

    def self.all
        return @@all
    end

    def self.premium_members
        prem_members = []
        @@all.each do |passenger|
            if passenger.total_distance > 100
                prem_members.push(passenger)
            end
        end
        return prem_members
    end       
end

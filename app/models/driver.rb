class Driver
    attr_accessor(:name)
    
    @@all = []
    
    def initialize(name)
        self.name = name
        @@all.push(self)
    end 

    def name
        return self.name
    end

    def passenger_names
        all_passengers = []
        self.rides.each do |ride|
            if !all_passengers.include?(ride.passenger)
                all_passengers.push(ride.passenger)
            end    
        end
        return all_passengers
    end
    
    def rides
        total_rides = []
        Ride.all.each do |ride|
            if ride.driver == self
                total_rides.push(ride)
            end
        end
        return total_rides
    end

    def self.all
        return @@all
    end

    def total_distance
        total_distance = 0
        self.rides.each do |ride|
            total_distance += ride.distance
        end
        return total_distance
    end 

    def self.mileage_cap(distance)
        driver_cap = []
        @@all.each do |driver|
            if driver.total_distance > distance
                driver_cap.push(driver)
            end
        end
        return driver_cap
    end       
        

            

end


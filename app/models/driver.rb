class Driver

    @@all = []

    attr_accessor :name 

    def initialize(name)
        @name = name 
        @@all << self
    end

    def name
        @name
    end

    def passenger_names
         
        passenger_names = self.rides.map do |ride|
            ride.passenger.name
        end
        passenger_names.uniq
    end


    def rides

        Ride.all.select do |ride|
            ride.driver == self
        end 

    end

    def Driver.all
        @@all
    end

    def Driver.mileage_cap(distance)
        arr=[]
        Driver.all.each do |driver|
            driver.rides.each do |ride|
               if ride.distance >= distance 
                arr.push(driver)
               end
            end
        end
        return arr
    end



end


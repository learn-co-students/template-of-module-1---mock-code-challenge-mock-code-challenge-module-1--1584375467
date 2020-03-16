class Driver

    attr_accessor  :name
 
    @@all = []
 
    def initalize(name)
     @name = name 
     @@all.push(self)
    end
 
    def self.all
        @@all
    end
 
    def rides
     ride.all.each { |ride| ride.driver==self}
    end
 
    def passenger_names
     passengers = rides.map {|ride| ride.passenger.name}
   .uniq
   end
 
    def self.mileage_cap(distance)
     ride.all.each {|ride| ride.distance > ride}
    end
     

 end

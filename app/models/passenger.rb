require 'pry'
class Passenger
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def drivers #Returns all the drivers the rider has been with
        arr = []
        Ride.all.each do |ride|
            if ride.passenger == self
                arr << ride.driver
            end
        end
        arr
    end

    def rides #Returns all the rides the passenger has been on
        arr = []
        Ride.all.each do |ride|
            if ride.passenger == self
                arr << ride
            end
        end
        arr
    end

    def total_distance #Returns the total distance the passenger has been on
        total = 0
        Ride.all.each do |ride|
            if ride.passenger == self
                total += ride.distance
            end
        end
        total
    end

    def self.all #Returns all the Passeger objects that have been created
        @@all
    end

    def self.premium_members #Checks which members have rode a distance of 100+ miles
        #hint use total_distance
        arr = []
        Passenger.all.each do |passenger|
            if passenger.total_distance >= 100
                arr << passenger
            end
        end
        arr
    end

end

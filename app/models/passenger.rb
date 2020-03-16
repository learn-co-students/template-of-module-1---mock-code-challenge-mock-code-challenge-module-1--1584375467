class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def name()
        @name
    end

    def rides
        Ride.all.select{|p| p.passenger == self}
    end

    def drivers
        Ride.all.collect{|p| p.driver}
    end

    def total_distance
        x = []
        Ride.all.each do |p|
            if p.passenger == self
                x << p.distance
            end
        end
        x.sum
    end

    def self.premium_members
        Ride.all.select{|p| p.distance > 100}
    end

end

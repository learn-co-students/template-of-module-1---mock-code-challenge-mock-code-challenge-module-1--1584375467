class Passenger
    attr_accessor  :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def rides
        rides.map {[ride] ride.passenger == self}
    end

    def drivers
        rides.map {|ride| ride.pasenger == self}
    end

    def total_distance
        total_miles = 0
        rides.each do |ride|
        total_miles += ride.total_distance
        end
    end

    def self.premium_members
        premiums = ride.all.select {|ride|}
        ride.passenger.total_distance > 0}
        premiums.map {|ride| ride.passenger}.uniq
    end
end

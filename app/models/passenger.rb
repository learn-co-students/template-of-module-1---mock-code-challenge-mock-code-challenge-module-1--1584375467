class Passenger
  attr_accessor :name
  @@all = []

  def initialize (name)
    @name = name
    @@all.push(self)
  end

  def rides
    ride_arr = []

    Ride.all.each do |ride|
      if ride.passenger == self
        ride_arr << ride
      end
    end
    ride_arr
  end

  def drivers
    driver_arr = []
    Ride.all.each do |ride|
      if ride.passenger == self
        driver_arr << ride.driver
      end
    end
    driver_arr
  end

  def total_distance
    total_distance = 0

    self.rides.each do |ride|
      total_distance += ride.distance
    end

    total_distance
  end

  def self.all
    return @@all
  end

  def self.premium_members
    premium_members = []

    Passenger.all.each do |passenger|
      if passenger.total_distance > 100
        premium_members << passenger
      end
    end
    premium_members
    
  end
end

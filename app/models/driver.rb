class Driver
  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passenger_names
    arr = []
    self.rides.each do |ride|
      arr << ride.passenger
    end
    arr
  end

  def rides
    ride_arr = []
    Ride.all.each do |ride|
      if ride.driver == self
        ride_arr << ride
      end
    end
    ride_arr
  end

  def self.mileage_cap (distance)
    driver_arr = []
    Driver.all.each do |driver|
      driver.rides.each do |ride|
        if distance < ride.distance
          driver_arr << driver
        end
      end
    end
    driver_arr

  end
end

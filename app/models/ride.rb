class Ride
  attr_accessor :distance, :driver, :passenger

  @@all = []
  @@all_distances = []

  def initialize(passenger, driver, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
    @@all_distances << self.distance
  end

  def self.all
    @@all
  end
  def self.all_distances
    @@all_distances
  end

  def Ride.average_distance
    avg_distance = Ride.all_distances.sum / Ride.all_distances.count

    # sum = 0
    # avg_dist = 0
    # Ride.all.each do |ride|
    #   sum += ride.distance
    # end
    # avg_dist = sum / Ride.all.count
    # avg_dist.to_f
  end
end

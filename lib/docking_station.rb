class DockingStation
  attr_reader :bike_arr

  def initialize
    @bike_arr = []
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @bike_arr.push(bike)
  end
end

class DockingStation
  attr_accessor :bike_arr

  def initialize
    @bike_arr = []
  end

  def release_bike
    @bike_arr.pop
  end

  def dock_bike(bike)
    @bike_arr.push(bike)
  end

end

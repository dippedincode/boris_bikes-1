class DockingStation
  attr_reader :is_full

  def initialize
    @is_full = false
  end

  def release_bike
    Bike.new
  end

  def dock_bike
    @is_full = true
    return @is_full
  end

  def full?
    return is_full
  end
end

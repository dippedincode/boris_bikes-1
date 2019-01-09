require 'docking_station'

describe DockingStation do
#  subject { DockingStation.new }
  it { is_expected.to respond_to :release_bike}

  it "releases a bike" do
    stn = DockingStation.new
    stn.bike_arr.push(Bike.new)
    expect(stn.release_bike).to be_a Bike
  end

  it "releases a bike and drops it from the array" do
    stn = DockingStation.new
    19.times { stn.bike_arr.push(Bike.new) }
    10.times { stn.release_bike }
    expect(stn.bike_arr.count).to be 9
  end

  it "tells if bike is working" do
    expect(Bike.new).to be_working
  end

  it { is_expected.to respond_to :dock_bike }

  it "takes a bike and puts it in the array" do
    stn = DockingStation.new
    before = stn.bike_arr.count
    stn.dock_bike(Bike.new)
    expect(stn.bike_arr.count - before).to be 1
  end

  it "tells if it has at least one bike" do
    stn = DockingStation.new
    5.times { stn.dock_bike(Bike.new) }
    expect(stn.bike_arr).not_to be_empty
  end

  it "tells if it is empty" do
    stn = DockingStation.new
    stn.dock_bike(Bike.new)
    stn.release_bike
    expect(stn.bike_arr).to be_empty
  end

end

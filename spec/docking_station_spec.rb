require 'docking_station'

describe DockingStation do
#  subject { DockingStation.new }
  it { is_expected.to respond_to :release_bike}

  it "tells if bike is working" do
    expect(Bike.new).to be_working
  end

  it { is_expected.to respond_to :dock_bike }

  it "takes a bike" do
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

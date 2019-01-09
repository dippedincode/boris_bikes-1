require 'docking_station'

describe DockingStation do
#  subject { DockingStation.new }
  it { is_expected.to respond_to :release_bike}

  it "gets a bike" do
    expect(Bike.new).to be_working
  end

  it { is_expected.to respond_to :dock_bike }

  it "takes a bike" do
    stn = DockingStation.new
    before = stn.bike_arr.count
    stn.dock_bike(Bike.new)
    expect(stn.bike_arr.count - before).to be 1
  end

end

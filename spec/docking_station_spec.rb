require 'docking_station'

describe DockingStation do
#  subject { DockingStation.new }
  it { is_expected.to respond_to :release_bike}

  it "gets a bike" do
    expect(Bike.new).to be_working
  end

  it { is_expected.to respond_to :dock_bike }

  it "takes a bike" do
    p "test:"
    p DockingStation.new.dock_bike
    stn = DockingStation.new
    stn.dock_bike
    expect(stn).to be_full
  end

end

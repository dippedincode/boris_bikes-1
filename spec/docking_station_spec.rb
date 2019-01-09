require 'docking_station'

describe DockingStation do
#  subject { DockingStation.new }
  it { is_expected.to respond_to(:release_bike)}

  it "gets a bike" do
    expect(Bike.new.working?).to be true
  end

end

describe DockingStation.new.release_bike do
  it { is_expected.to be }
end

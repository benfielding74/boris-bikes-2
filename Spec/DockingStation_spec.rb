require 'DockingStation'
describe DockingStation do 

  let(:bike) { double :bike }

  it "get's a bike and expects the bike to be working" do
    allow(bike).to receive(:working?).and_return(true)
    released_bike = subject.release_bike
    expect(released_bike.working?).to eq true
  end

  it 'wont release a broken bike' do
    docking_station = DockingStation.new(1)
    docking_station.release_bike
    allow(bike).to receive(:broken?).and_return(true)
    docking_station.dock_bike(bike)
    expect{docking_station.release_bike}.to raise_error("This bike is broken")
  end

  it "Allows us to dock a bike" do
    docking_station = DockingStation.new
    docking_station.release_bike
    expect(docking_station.dock_bike(:bike)).to eq (docking_station.bikes)
  end

  it "checks if there are bikes" do
    docking_station = DockingStation.new(0)
    expect{docking_station.release_bike}.to raise_error ("There are no bikes available")
  end

  it 'alerts if the docking station is full' do
    docking_station = DockingStation.new
    expect{docking_station.dock_bike(:bike)}.to raise_error("Docking station full")
  end

  it "allows user to set capacity" do
    docking_station = DockingStation.new(50)
    expect(docking_station.bikes.length).to eq(50)
  end

end
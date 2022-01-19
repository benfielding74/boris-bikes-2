require 'DockingStation'
describe DockingStation do 
  it 'stores and releases bikes' do 
  #Arrange
    
  #Act
   expect(subject).to respond_to(:release_bike)
   
  #Assert
  end

  it "get's a bike and expects the bike to be working" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    expect(bike.working?).to eq true
  end

  it "Allows us to dock a bike" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    expect(docking_station.dock_bike(bike)).to eq (docking_station.bikes)
  end

  it { is_expected.to respond_to(:bikes)}

  it "checks if there are bikes" do
    docking_station = DockingStation.new
    20.times {docking_station.release_bike}
    expect{docking_station.release_bike}.to raise_error ("There are no bikes available")
  end

  it 'alerts if the docking station is full' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect{docking_station.dock_bike(bike)}.to raise_error("Docking station full")
  end

  it "allows user to set capacity" do
    docking_station = DockingStation.new(50)
    expect(docking_station.bikes.length).to eq(50)
  end

  it "checks default capacity" do
    docking_station = DockingStation.new
    expect(docking_station.bikes.length).to eq(20)
  end

  it 'wont release a broken bike' do
    docking_station = DockingStation.new(1)
    bike = docking_station.release_bike
    bike.report_broken
    docking_station.dock_bike(bike)
    expect{docking_station.release_bike}.to raise_error("This bike is broken")
  end

end
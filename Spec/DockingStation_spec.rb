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

    expect(docking_station.dock_bike(bike)).to eq ([bike])
  end

  it "Lets us see the bikes" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docking_station.dock_bike(bike)

    expect(docking_station.bikes).to eq ([bike])

  end

end
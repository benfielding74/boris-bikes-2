require './Lib/DockingStation.rb'
describe DockingStation do 
  it 'stores and releases bikes' do 
  #Arrange
    docking_station = DockingStation.new
  #Act
    # expect(docking_station.release_bike).to eq "Bike Released"
    # docking_station.respond_to?release_bike
    respond_to?(docking_station.release_bike) 
  #Assert
  end
end
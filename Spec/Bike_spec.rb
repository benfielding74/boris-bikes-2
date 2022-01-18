require './Lib/DockingStation.rb'
describe Bike do 
  it 'stores bike health' do 
  #Arrange
    my_bike = Bike.new
  #Act
    # expect(docking_station.release_bike).to eq "Bike Released"
    # docking_station.respond_to?release_bike
    respond_to?(my_bike.working?) 
  #Assert
  end
end
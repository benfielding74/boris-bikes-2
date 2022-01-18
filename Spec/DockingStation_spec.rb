require '.Lib/DockingStation.rb'
describe DockingStation do 
  it 'stores and releases bikes' do 
  #Arrange
  docking_station = DockingStation
  #Act
  docking_station.respond_to.release_bike
  #Assert

end
end
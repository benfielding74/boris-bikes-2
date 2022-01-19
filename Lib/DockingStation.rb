require './Lib/bike.rb'

class DockingStation
  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def release_bike
    bike = Bike.new
    end

  def dock_bike(bike)
    @bikes << bike
  end

end


require './Lib/bike.rb'

class DockingStation
  attr_reader :bikes
  
  def initialize(num_bikes = 5)
    @bikes = []
    num_bikes.times {@bikes << Bike.new}
  end

  def release_bike

    if !@bikes.empty?
    @bikes.pop
    else
    raise "There are no bikes available"
    end

  end

  def dock_bike(bike)
    @bikes << bike
  end

end


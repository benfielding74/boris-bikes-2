require './Lib/bike.rb'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    DEFAULT_CAPACITY.times {@bikes << Bike.new}
  end

  def release_bike
    fail "There are no bikes available" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end


require './Lib/bike.rb'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @capacity.times {@bikes << Bike.new}
  end

  def release_bike
    fail "There are no bikes available" if empty?
    @bikes.each_with_index{|bike, i|
      if !bike.broken?
        return @bikes.delete_at(i)
        break
      else
        raise "This bike is broken"
      end 
    }
  end

  def dock_bike(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end


class DockingStation
   # $bike = 0
  def release_bike
    return "Bike released"
    # bike = Bike.new
    #$bike += 1
    end
end

class Bike
  def initialize
    @working = "Yes"
  end

  def working?
    return @working
  end
end

# docking_station = DockingStation.new
# docking_station
# docking_station.release_bike
# puts $bike
# bike.working?

# my_bike = Bike.new
# p my_bike
# p my_bike.working?

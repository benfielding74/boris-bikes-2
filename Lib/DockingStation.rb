class DockingStation
  def release_bike
    # return "Bike released"
    $bike += 1
  end
end

class Bike
  def initialize
    working_bike += 1
  end
end

# docking_station = DockingStation.new
# docking_station
# docking_station.release_bike
# puts $bike
# p $bike.working

# in lib/docking_station.rb
class DockingStation
  def release_bike
    Bike.new
  end
end

class Bike
  def working?

  end
end

docking_station = DockingStation.new

bike = docking_station.release_bike

bike.working?

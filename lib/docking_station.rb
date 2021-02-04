# in lib/docking_station.rb
class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.length > 0
      Bike.new
    else
      raise Exception.new "no bikes here"
    end
  end

  def dock_bike(bike)
    if @bikes.length < 20
      @bikes << bike
    elsif @bikes.length >= 20
      raise("bike rack is full")
    end
  end
end

class Bike
  def working?

  end
end

#station = DockingStation.new
#station.dock_bike
#puts station.bikes

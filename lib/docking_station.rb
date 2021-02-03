# in lib/docking_station.rb
class DockingStation
  attr_reader :bikes

  def initialize
  @bikes = 0
  end

  def release_bike
    if @bikes > 0
      Bike.new
    else
      raise Exception.new "no bikes here"
    end
  end

  def dock_bike
    @bikes += 1
  end
end

class Bike
  def working?

  end
end

#station = DockingStation.new
#station.dock_bike
#puts station.bikes

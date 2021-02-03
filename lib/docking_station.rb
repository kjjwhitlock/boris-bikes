# in lib/docking_station.rb
class DockingStation
  attr_reader :bikes

  def initialize
  @bikes = 0
  end

  def release_bike
    Bike.new
  end
  def dock_bike
    @bikes += 1
    puts "this should be returning #{@bikes}"
  end
end

class Bike
  def working?

  end
end
station = DockingStation.new
station.dock_bike
puts station.bikes

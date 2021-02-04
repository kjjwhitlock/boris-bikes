# in lib/docking_station.rb
class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    if empty?
      raise Exception.new "no bikes here"
    else
      Bike.new
    end
  end

  def dock(bike)
    if full?
      raise("bike rack is full")
    else
      @bikes << bike
    end
  end

  private
  def full?
    if @bikes.length == DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    if @bikes.length == 0
      true
    else
      false
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

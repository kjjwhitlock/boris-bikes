# in lib/docking_station.rb
class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
    if @bikes.length == @capacity
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

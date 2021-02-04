# in lib/docking_station.rb
class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise Exception.new "no bikes here" if empty?
    Bike.new
  end

  def dock(bike)
    raise("bike rack is full") if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.length == @capacity ? true : false
  end

  def empty?
    @bikes.length == 0 ? true : false
  end
end

class Bike
  def working?

  end
end

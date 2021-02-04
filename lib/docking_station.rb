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
    last_bike = bikes[-1]
    @bikes.pop if last_bike.working?
    # note for future refactoring - if the last bike is broken then this would
    # stop the user from accessing any bikes. Could refactor to iterate through 
    # the array and release the first working bike
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
  attr_reader :broken

  def initialize
    @broken = false
  end

  def report_broken
    @broken = true
  end

  def working?
    @broken == false ? true : false
  end
end

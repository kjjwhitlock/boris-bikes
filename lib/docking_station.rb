# in lib/docking_station.rb
class DockingStation
<<<<<<< HEAD
  attr_reader :bikes, :capacity
=======
  attr_reader :bikes

>>>>>>> parent of f9b92eb (update files after challenge 17)
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
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
<<<<<<< HEAD
    @bikes.length == @capacity ? true : false
=======
    if @bikes.length == DEFAULT_CAPACITY
      true
    else
      false
    end
>>>>>>> parent of f9b92eb (update files after challenge 17)
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

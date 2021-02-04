require 'docking_station'

describe 'DockingStationTest' do

  it 'responds to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'get the bike and check if bike is working' do
    station = DockingStation.new
    station.dock(Bike.new)
    expect(station.release_bike).to respond_to(:working?)
  end

  it 'docks the bike' do
    expect(DockingStation.new).to respond_to(:dock)
  end

  it 'docking the bike increases total of bikes in docking station' do
    station = DockingStation.new
    expect { station.dock(Bike.new) }.to change{station.bikes.length}.from(0).to(1)
  end

  it 'raises an error if user tries to release non-existent bike' do
    station = DockingStation.new
    expect { station.release_bike }.to raise_exception("no bikes here")
  end

  it 'raises an error if user tries to dock bike when station full' do
    station = DockingStation.new
    bike = Bike.new
    test = DockingStation::DEFAULT_CAPACITY + 1
    expect { test.times { station.dock(bike) } }.to raise_error("bike rack is full")
  end

  it 'allows user to set default bike capacity' do
    station = DockingStation.new(30)
    expect { station }.to_not raise_error
    expect(station.capacity).to eq(30)
  end

  it 'sets default capacity to 20' do
    station = DockingStation.new
    expect(station.capacity).to eq(20)
  end

end

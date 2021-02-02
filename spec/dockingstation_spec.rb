require 'docking_station'

describe 'DockingStationTest' do
  it 'responds to release_bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end
  it 'get the bike and check if bike is working' do
    docking_station = DockingStation.new
    bike = docking_station.
    #todo check if working? returns true
    expect(bike).to respond_to(:working?)
  end
end

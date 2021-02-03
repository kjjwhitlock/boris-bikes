require 'docking_station'

describe 'DockingStationTest' do
  it 'responds to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it 'get the bike and check if bike is working' do
    expect(DockingStation.new.release_bike).to respond_to(:working?)
  end
  it 'docks the bike' do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end
  it 'docking the bike increases total of bikes in docking station' do
    station = DockingStation.new
    expect{station.dock_bike}.to change{station.bikes}.from(0).to(1)
  end
end

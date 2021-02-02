require 'docking_station'

describe 'Bike' do
  it 'responds to release_bike' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
end

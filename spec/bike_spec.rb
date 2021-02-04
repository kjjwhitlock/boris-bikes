require 'docking_station'

describe 'Bike' do

  it 'responds to release_bike' do
    bike = Bike.new
    expect(bike.working?).to be(true)
  end

  it 'allows user to report broken bike' do
    bike = Bike.new
    expect { bike.report_broken }.to change { bike.broken }.from(false).to(true)
  end
end

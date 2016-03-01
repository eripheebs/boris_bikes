require '../lib/docking_station.rb'
require '../lib/bike.rb'


describe 'working?' do

	it 'expect working bike to return true' do
	end
	
end

describe 'dock' do

	it 'expect bike to be docked when method called' do
		station = DockingStation.new
		station.release_bike
		expect(Bike.new.dock).to eq(true)
	end

	it 'expect error message when trying to dock bike in full docking station' do
		station = DockingStation.new
		bike = Bike.new
		expect { bike.dock }.to raise_error(RuntimeError, "Dock is full!")
	end

end

describe 'docked' do
	it 'expects new bike not to be docked' do
		expect(Bike.new.docked).to eq(false)
	end
end
require '../lib/docking_station.rb'
require '../lib/bike.rb'

describe 'release_bike' do

	it 'expect docking station to release bike' do
		expect(DockingStation.new.release_bike.is_a? Bike).to eq (true)
	end

	it 'expects bike released to be working' do
		expect(Bike.new.working?).to eq (true)
	end
	
end


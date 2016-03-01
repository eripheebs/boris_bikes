require '../lib/docking_station.rb'
require '../lib/bike.rb'

describe 'release_bike' do

	it 'expect docking station to release bike' do
		station = DockingStation.new
		bike = Bike.new
		station.dock(bike)
		expect(station.release_bike).to eq (bike)
	end

	it 'expects bike released to be working' do
		expect(Bike.new.working?).to eq (true)
	end

	it 'expects error when it runs out of bikes' do
		station = DockingStation.new
		expect{ station.release_bike }.to raise_error(RuntimeError, "No more bikes!")
	end
	
end

describe 'dock' do

	it 'expect bike rack to add a bike when method called' do
		station = DockingStation.new
		bike = Bike.new
		expect(station.dock(bike)).to eq([bike])
	end

	it 'expect error message when trying to dock bike in full docking station' do
		station = DockingStation.new
		bike = Bike.new
		20.times do
			station.dock(bike)
		end 
		expect { station.dock(bike) }.to raise_error(RuntimeError, "Dock is full!")
	end

end

describe 'initialize' do

	it 'expects capacity to be set by argument' do
		station = DockingStation.new 2
		bike = Bike.new
		2.times do
			station.dock(bike)
		end 
		expect { station.dock(bike) }.to raise_error(RuntimeError, "Dock is full!")
	end

end


require '../lib/docking_station.rb'
require '../lib/bike.rb'

describe 'release_bike' do

	it 'expect docking station to release bike' do
		station = DockingStation.new
		bike = double(:bike)
		station.dock(bike)
		expect(station.release_bike).to eq (bike)
	end

	let(:bike) { double :bike }
	it 'expects bike released to be working' do
		allow(bike).to receive(:working?).and_return(true)
		station = DockingStation.new
		station.dock(bike)
		bike = station.release_bike
		expect(bike.working?).to eq (true)
	end

	it 'expects error when it runs out of bikes' do
		station = DockingStation.new
		expect{ station.release_bike }.to raise_error(RuntimeError, "No more bikes!")
	end
	
end

describe 'dock' do

	it 'expect bike rack to add a bike when method called' do
		station = DockingStation.new
		bike = double(:bike)
		expect(station.dock(bike)).to eq([bike])
	end

	it 'expect error message when trying to dock bike in full docking station' do
		station = DockingStation.new
		bike = double(:bike)
		20.times do
			station.dock(bike)
		end 
		expect { station.dock(bike) }.to raise_error(RuntimeError, "Dock is full!")
	end

	it 'expect capacity to be reduced if broken bike is returned' do
		station = DockingStation.new 1
		bike = double(:bike)
		station.dock(bike, false)
		expect { station.dock(bike) }.to raise_error(RuntimeError, "Dock is full!")
	end

	it 'expect no bike to be taken out if only broken bikes remain' do
		station = DockingStation.new 1
		bike = double(:bike)
		station.dock(bike, false)
		expect{ station.release_bike }.to raise_error(RuntimeError, "No more bikes!")
	end

end

describe 'initialize' do

	it 'expects capacity to be set by argument' do
		station = DockingStation.new 2
		bike = double(:bike)
		2.times do
			station.dock(bike)
		end 
		expect { station.dock(bike) }.to raise_error(RuntimeError, "Dock is full!")
	end

end


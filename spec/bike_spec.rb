require '../lib/docking_station.rb'
require '../lib/bike.rb'


describe 'working?' do

	it 'expect working bike to return true' do
	end
	
end

describe 'docked' do
	it 'expects new bike not to be docked' do
		expect(Bike.new.docked).to eq(false)
	end
end
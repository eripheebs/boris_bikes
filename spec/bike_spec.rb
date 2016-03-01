require '../lib/bike.rb'

describe 'working?' do

	it 'expect working bike to return true' do
	end
	
end

describe 'dock' do

	it 'expect bike to be docked when method called' do
		expect(Bike.new.dock).to eq(true)
	end

end

describe 'docked' do
	it 'expects new bike not to be docked' do
		expect(Bike.new.docked).to eq(false)
	end
end
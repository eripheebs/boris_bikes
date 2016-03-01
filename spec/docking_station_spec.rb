require DockingStation

describe 'DockingStation' do 
	it 'expect new docking station object to be initialised when adding new docking station' do
		expect(docking_station = DockingStation.new).to eq ('docking_station')
	end
end

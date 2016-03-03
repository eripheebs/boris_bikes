require 'docking_station'

describe DockingStation do

  let(:bike) {double :bike, broken: false}
  let(:broken_bike) {double :bike, broken: true}

  describe 'release_bike' do

    it 'raises exception when no bikes to release' do
      expect{subject.release_bike}.to raise_error 'No bikes to release' if subject.bikes.empty?
    end

    it 'expects bike to be released and bike to work' do
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it 'does not release broken bike' do
      subject.dock(broken_bike)
      expect{subject.release_bike}.to raise_error 'No bikes to release'
    end

    it 'expects bike can be picked by bike ID' do
      subject.dock(bike)
      expect(subject.release_bike("#{bike.object_id}")).to eq(bike)
    end

    it 'expects error message if ID passed as argument is not valid' do
      subject.dock(bike)
      expect { subject.release_bike("moo") }.to raise_error 'No bike with that ID exists'
    end

  end

  describe 'dock' do

    it 'expects dock to give bike' do
      subject.dock(bike)
      expect(subject.bikes).to eq({"#{bike.object_id}" => bike})
    end

    it 'raises an exception when dock is full' do
      station = DockingStation.new (0)
      expect{station.dock(bike)}.to raise_error 'Docking Station full'
    end

    it 'accepts all bikes' do
      subject.dock(bike)
      subject.dock(broken_bike)
      expect(subject.bikes).to include("#{bike.object_id}" => bike, "#{broken_bike.object_id}" => broken_bike)
    end

    it 'expects it to not dock non-bikes' do
      expect{subject.dock(Object.new)}.to raise_error "That's not a bike!"
    end

  end

  describe 'take_bikes' do

    it 'expects to fill the van with broken bikes' do
      subject.take_bikes({"#{bike.object_id}" => bike, "#{broken_bike.object_id}" => broken_bike}, true)
      expect(subject.bikes).to eq({"#{broken_bike.object_id}" => broken_bike})
    end

  end

end

require 'van'
require 'docking_station'
require 'garage'

shared_examples_for "BikeContainer" do
  let(:bikecontainer) { described_class.new }

  it 'should show stored bikes' do
    expect(bikecontainer.bikes).to eq({})
  end

  describe 'load' do

    it 'expects to fill the van with broken bikes' do
      broken_bike = double(:bike, broken: true)
      bike = double(:bike, broken: false)
      subject.take_bikes({"#{bike.object_id}" => bike, "#{broken_bike.object_id}" => broken_bike}, true)
      expect(subject.bikes).to eq({"#{broken_bike.object_id}" => broken_bike})
    end

  end

end

describe Van do
  it_behaves_like 'BikeContainer'
end

describe Garage do
  it_behaves_like 'BikeContainer'
end

describe DockingStation do
  it_behaves_like 'BikeContainer'
end
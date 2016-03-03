require 'van'

describe Van do

  describe 'take_bikes' do

    it 'expects to fill the van with broken bikes' do
      broken_bike = double(:bike, broken: true)
      bike = double(:bike, broken: false)
      subject.take_bikes({"#{bike.object_id}" => bike, "#{broken_bike.object_id}" => broken_bike}, true)
      expect(subject.bikes).to eq({"#{broken_bike.object_id}" => broken_bike})
    end

  end

end

# require 'bike_container'

# include BikeContainer

# describe BikeContainer do

# 	let!(:dummy) { Class.new { include BikeContainer; def bikes; @bikes; end } }
# 	let(:bike) { double :bike, broken: false }
# 	let(:broken_bike) { double :bike, broken: true}
	
# 	before(:each) do
# 		dummy.set_up_container(20)
# 	end

#   describe 'take_bikes' do

#     it 'expects to take fixed bikes' do
#     	p dummy
# 	    dummy.take_bikes([bike, broken_bike],false)
# 	    expect(dummy.bikes).to eq([bike])
#     end

# 	it 'expects to take broken bikes' do
# 	    dummy.take_bikes([bike, broken_bike],true)
# 	    expect(dummy.bikes).to eq([broken_bike])
#     end

#   end

# end
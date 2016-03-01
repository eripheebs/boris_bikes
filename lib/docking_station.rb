class DockingStation
	attr_reader :bike, :bikecount
	def initialize
		@bikecount = 20
	end

	def release_bike
		raise "No more bikes!" if @bikecount < 1
		@bikecount -= 1
		Bike.new
	end

end
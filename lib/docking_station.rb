class DockingStation
	attr_reader :bike, :bikecount
	def initialize
		@bikes = []
	end

	def release_bike
		fail "No more bikes!" if empty?
		$bikes.pop
	end

	def dock(bike)
		fail "Dock is full!" if full?
		@bikes << bike
	end

private

	def full? 
		@bikes.count >= 20
	end

	def empty?
		$bikes.empty?
	end

end


class DockingStation
	attr_reader :bike, :bikes
	DEFAULT_CAPACITY = 20
	def initialize(capacity=DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def release_bike
		fail "No more bikes!" if empty?
		@bikes.pop
	end

	def dock(bike, broken=true)
		fail "Dock is full!" if full?
		@capacity -= 1 if broken == false
		@bikes << bike if broken == true
	end

private

	def full? 
		@bikes.count >= @capacity
	end

	def empty?
		@bikes.empty?
	end

end


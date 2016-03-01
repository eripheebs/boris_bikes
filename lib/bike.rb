class Bike
	attr_reader :docked
	def initialize
		@docked = false
	end

	def working?
		true
	end

	def dock
		@docked = true
	end

end
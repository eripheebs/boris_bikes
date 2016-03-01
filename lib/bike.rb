require_relative 'docking_station'

class Bike
	attr_reader :docked
	def initialize
		@docked = false
	end

	def working?
		true
	end

	def dock(bike)
		@docked = true
	end

end
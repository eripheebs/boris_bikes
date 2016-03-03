#wheelies are scooters and bikes (couldn't think of a better short description)

module Wheelies

	attr_reader :broken

	def set_up_wheelie
		@broken = false
  	end

  	def report_broken
    	@broken = true
  	end

  	def working?
    	true
  	end

end
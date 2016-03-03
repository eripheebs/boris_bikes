module BikeContainer

  	def set_up_container(capacity)
    	@bikes = []
    	@capacity = capacity
  	end

	def take_bikes(location, to_fix)
	    location.each do |bike|
	      if bike.broken == to_fix
	        location.delete(bike)
	        @bikes << bike
	      end
	    end
	end

end
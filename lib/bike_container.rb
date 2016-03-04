module BikeContainer

  	def set_up_container(capacity)
    	@bikes = {}
    	@capacity = capacity
  	end

	def take_bikes(location, to_fix)
	    location.each do |bike_id, bike|
	    	fail 'Capacity Limit Reached.' if full?
	      if bike.broken == to_fix
	        location.delete(bike)
	        @bikes[bike_id] = bike
	      end
	    end
	end

	private 
	
  def full?
      @bikes.size == @capacity
  end

end
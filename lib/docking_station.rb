require_relative 'bike'
require_relative 'bike_container'

class DockingStation

  include BikeContainer

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
      set_up_container(capacity)
  end

  def release_bike(bike_id=nil)
    fail 'No bikes to release' if empty?
    if bike_id == nil
    bikes_all_broken = true
      @bikes.each do |bike_id, bike|
        if bike.broken == false
          bikes_all_broken = false
          @bikes.delete(bike_id)
          return bike
          break
        end
      end
    fail 'No bikes to release' if bikes_all_broken == true
    else
      fail 'No bike with that ID exists' unless @bikes.has_key?(bike_id)
      return @bikes[bike_id]
    end
  end

  def dock(bike)
    fail 'Docking Station full' if full?
    fail "That's not a bike!" unless bike.respond_to?('broken')
    @bikes["#{bike.object_id}"] = bike
  end

  private

  def full?
    @bikes.size == @capacity
  end

  def empty?
    @bikes.empty?
  end

end

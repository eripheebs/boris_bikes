require_relative 'bike'
require_relative 'bike_container'

class DockingStation

  include BikeContainer

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
      set_up_container(capacity)
  end

  def release_bike
    fail 'No bikes to release' if empty?
    bikes_all_broken = true
    @bikes.each do |bike|
      if bike.broken == false
        bikes_all_broken = false
        @bikes.delete(bike)
        return bike
        break
      end
    end
    fail 'No bikes to release' if bikes_all_broken == true
  end

  def dock (bike)
    fail 'Docking Station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count == @capacity
  end

  def empty?
    @bikes.empty?
  end

end

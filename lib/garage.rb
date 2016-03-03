class Garage

  include BikeContainer

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
      set_up_container(capacity)
  end

  #def fix
  #  @bikes.each do |bike|
  #    bike.broken = false
  #  end
  #end

end

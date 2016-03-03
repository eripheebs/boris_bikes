class Van

  include BikeContainer

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
      set_up_container(capacity)
  end

end

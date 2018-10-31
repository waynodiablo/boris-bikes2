class DockingStation

  attr_reader :bike

  def initialize
    @bike = []
    #@docked_bikes = []
  end

  def dock_bike(bike)
    @bike << bike
  end

  def release_bike
    bike = Bike.new
  end

  def check_bike
    @bike
  end




end


class Bike
  #def initialize
    #@name = name

#  end

  def working?
    return 'working'
  end

end

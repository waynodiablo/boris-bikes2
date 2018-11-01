class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def dock_bike(bike)
    raise 'This docking station is full' if full?
    @docked_bikes << bike
  end

  def release_bike(name)
    raise 'No bikes available' if empty?
    @docked_bikes.pop
  end

  def check_bike
    docked_bikes
  end

private
  def full?
    @docked_bikes.length == 20
  end

  def empty?
    @docked_bikes.empty?
  end

end


class Bike
  def initialize(name)
    @name = name
  end

  def working?
    return true
  end
end

class DockingStation
  attr_reader :docked_bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @docked_bikes = []
    @capacity = capacity
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
    @docked_bikes.length == capacity
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

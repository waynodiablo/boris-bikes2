class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def dock_bike(bike)
    raise 'This docking station is full' unless @docked_bikes.length < 20
    @docked_bikes << bike
  end

  def release_bike(name)
    raise 'No bikes available' unless @docked_bikes.any?
    @docked_bikes.pop
  end

  def check_bike
    docked_bikes
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

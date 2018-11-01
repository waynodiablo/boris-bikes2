class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def dock_bike(bike)
    @docked_bikes << bike
  end

  def release_bike(name)
    raise 'No bikes available' unless @docked_bikes.any?
    Bike.new(name)
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

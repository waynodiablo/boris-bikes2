class DockingStation

  def dock_bike
    p "docked"
  end


  def release_bike
    Bike.new
  end


  def return_bike
    p "returned"
  end

end
station = DockingStation.new
station.dock_bike



class Bike
  def working?
    return 'working'
  end

end

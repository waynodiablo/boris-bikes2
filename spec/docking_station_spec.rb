require 'boris_bikes'

describe DockingStation do
  it { should respond_to(:release_bike) }

  it 'gets a bike' do
    station = DockingStation.new
    bike = Bike.new("bike1")
    station.dock_bike(bike)
    expect(station.release_bike(bike)).to be_an_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    bike = Bike.new("bike1")
    expect(bike.working?).to eq true
  end

  it 'docks a bike when requested' do
    expect(subject).to respond_to(:dock_bike)
  end

  it 'checks if a bike has been docked' do
    bike = Bike.new("bike1")
    subject.dock_bike(bike)
    expect(subject.check_bike).to include(bike)
  end

  it 'should raise error if docking station is empty' do
    expect{subject.release_bike("bike1")}.to raise_error 'No bikes available'
  end

end

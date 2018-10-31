require 'boris_bikes'

describe DockingStation do
  it { should respond_to(:release_bike) }

  it 'gets a bike' do
    station = DockingStation.new
    expect(station.release_bike).to be_an_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    bike = Bike.new
    expect(bike.working?).to eq "working"
  end

  it 'docks a bike when requested' do
    expect(subject).to respond_to(:dock_bike)
  end

it 'checks if a bike has been docked' do
    expect(subject.check_bike).to include(@bike)
end


end

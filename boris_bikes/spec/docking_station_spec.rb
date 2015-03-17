require 'docking_station'
require 'bike'

describe DockingStation do
  it 'releases a bike that is not broken' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).not_to be_broken
  end
  it 'can dock a bike' do
    expect(subject.dock :bike).to eq :bike
  end
  it 'raises an error when no bikes are available' do
    expect { subject.release_bike }.to raise_error 'No Bikes Available'
  end
end

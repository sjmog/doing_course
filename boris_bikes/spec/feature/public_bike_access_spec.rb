require 'capybara/rspec'
require 'docking_station'

feature 'user accesses bike' do
  scenario 'docking station releases an unbroken bike' do
    docking_station = DockingStation.new
    docking_station.dock Bike.new
    bike = docking_station.release_bike
    expect(bike).not_to be_broken
  end
  scenario 'docking station cannot release as no bikes available' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error 'No Bikes Available'
  end
end

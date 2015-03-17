require_relative 'bike'

class DockingStation
  attr_accessor :bike
  alias_method :dock, :bike=

  def release_bike
    fail 'No Bikes Available' unless @bike
    @bike
  end
end

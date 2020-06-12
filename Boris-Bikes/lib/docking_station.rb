require_relative 'bike.rb'

class DockingStation
  attr_reader :bike_rack
  def initialize
    @bike_rack = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bike_rack
  end

  def dock(bike)
    fail 'No space available to dock' if full?
    @bike_rack << bike
  end

  private

  def full?
    @bike_rack.length >= 20
  end

  def empty?
    @bike_rack.empty?
  end
end

docking_station = DockingStation.new

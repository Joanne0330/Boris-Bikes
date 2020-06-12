require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike_rack).to eq [bike]
  end

  describe '#release_bike' do
    it 'releases a bike' do
    bike = Bike.new
    p subject.bike_rack
    subject.dock(bike)
    p subject.bike_rack
    expect(subject.release_bike).to eq [bike]
    end
  end

  describe '#release_bike' do
    it 'raies an error when there are no bikes available' do
    expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'cannot accept another bike because bike rack is full' do
      bike = Bike.new
      20.times {subject.dock(bike)}
      expect {subject.dock(bike)}.to raise_error 'No space available to dock'
    end
  end
end

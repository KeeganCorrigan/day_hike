require "rails_helper"

describe Trip, type: :model do
  describe "instance methods" do
    it ".total_trail_distance" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")
      trail_2 = trip_1.trails.create!(length: 30, name: "oijaoisdj", address: "iuhaidh")

      expect(trip_1.total_trail_distance).to eq(50)
    end

    it ".average_trail_distance" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")
      trail_2 = trip_1.trails.create!(length: 30, name: "oijaoisdj", address: "iuhaidh")

      expect(trip_1.average_trail_distance).to eq(25)
    end

    it ".longest_trail" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")
      trail_2 = trip_1.trails.create!(length: 30, name: "oijaoisdj", address: "iuhaidh")

      expect(trip_1.longest_trail).to eq(30)
    end

    it ".shortest_trail" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")
      trail_2 = trip_1.trails.create!(length: 30, name: "oijaoisdj", address: "iuhaidh")

      expect(trip_1.shortest_trail).to eq(20)
    end
  end
end

require "rails_helper"

describe Trail, type: :model do
  describe "instance methods" do
    it ".total_trail_distance" do
      trail_1 = Trail.create!(name: "oijasdio", length: 20, address: "oijasdio")
      trip_1 = trail_1.trips.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trip_2 = trail_1.trips.create!(name: "jasdiojoijd", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))

      expect(trail_1.total_trips).to eq(2)
    end
  end
end

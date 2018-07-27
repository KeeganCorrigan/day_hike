require "rails_helper"

describe "a visitor" do
  describe "visits a trail show page" do
    it "can see all hiking trips that have this trail" do
      trail_1 = Trail.create!(name: "oijasdio", length: 20, address: "oijasdio")
      trip_1 = trail_1.trips.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trip_2 = trail_1.trips.create!(name: "jasdiojoijd", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))

      visit trail_path(trail_1)

      expect(page).to have_content(trip_1.name)
      expect(page).to have_content(trip_1.total_trail_distance)


      expect(page).to have_content(trip_2.name)
    end
    it "can see the total number of trips this trail has" do
      trail_1 = Trail.create!(name: "oijasdio", length: 20, address: "oijasdio")
      trip_1 = trail_1.trips.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trip_2 = trail_1.trips.create!(name: "jasdiojoijd", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))

      visit trail_path(trail_1)

      expect(page).to have_content("Trips: 2")
    end
  end
end

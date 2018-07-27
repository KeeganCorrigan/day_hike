require "rails_helper"

describe "a visitor" do
  describe "visits hiking show page" do
    it "see's a list of trails" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")
      trail_2 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")

      visit trip_path(trip_1)

      expect(page).to have_content(trail_1.name)
      expect(page).to have_content("Length: #{trail_1.length}")
      expect(page).to have_content(trail_1.address)
      expect(page).to have_content(trail_2.name)
    end

    it "shows total distance of trails" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")
      trail_2 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")

      visit trip_path(trip_1)

      expect(page).to have_content("Total distance: 40")
    end

    it "shows average distance of trails" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")
      trail_2 = trip_1.trails.create!(length: 30, name: "oijaoisdj", address: "iuhaidh")

      visit trip_path(trip_1)

      expect(page).to have_content("Average distance: 25")
    end

    it "shows distance of longest trail" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")
      trail_2 = trip_1.trails.create!(length: 30, name: "oijaoisdj", address: "iuhaidh")

      visit trip_path(trip_1)

      expect(page).to have_content("Longest trail: 30")
    end

    it "shows distance of shortest trail" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")
      trail_2 = trip_1.trails.create!(length: 30, name: "oijaoisdj", address: "iuhaidh")

      visit trip_path(trip_1)

      expect(page).to have_content("Shortest trail: 20")
    end

    it "shows distance of shortest trail" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trail_1 = trip_1.trails.create!(length: 20, name: "oijaoisdj", address: "iuhaidh")

      visit trip_path(trip_1)

      click_on trail_1.name

      expect(current_path).to eq(trail_path(trail_1))
      expect(page).to have_content(trail_1.name)
    end
  end
end

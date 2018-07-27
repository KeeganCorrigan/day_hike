require "rails_helper"

describe "a visitor" do
  describe "hiking trips path" do
    it "sees a list of all hiking trip names" do

      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trip_2 = Trip.create!(name: "oasd9jsiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))

      visit trips_path

      expect(page).to have_content(trip_1.name)
      expect(page).to have_content(trip_2.name)
    end

    it "can click on a trip name and visit hiking trip show page" do
      trip_1 = Trip.create!(name: "oijasiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))
      trip_2 = Trip.create!(name: "oasd9jsiod", start_date: Date.strptime("8/29/2013", '%m/%d/%Y'), end_date: Date.strptime("8/30/2013", '%m/%d/%Y'))

      visit trips_path

      click_on trip_1.name

      expect(current_path).to eq(trip_path(trip_1))
      expect(page).to have_content(trip_1.name)
    end
  end
end

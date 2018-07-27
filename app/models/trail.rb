class Trail < ApplicationRecord
  has_many :hiking_trips

  has_many :trips, through: :hiking_trips

  def total_trips
    trips.count
  end
end

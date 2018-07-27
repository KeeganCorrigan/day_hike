class Trip < ApplicationRecord
  has_many :hiking_trips

  has_many :trails, through: :hiking_trips
  
  def total_trail_distance
    trails.sum(:length)
  end

  def average_trail_distance
    trails.average(:length)
  end

  def longest_trail
    trails.maximum(:length)
  end

  def shortest_trail
    trails.minimum(:length)
  end
end

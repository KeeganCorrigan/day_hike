class CreateHikingTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :hiking_trips do |t|
      t.references :trip, foreign_key: true
      t.references :trail, foreign_key: true
    end
  end
end

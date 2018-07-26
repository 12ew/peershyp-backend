class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :departure_city
      t.string :destination_city
      t.date :depart_date
      t.date :arrival_date
      t.string :airline
      t.string :flight_num
      t.string :traveler_id

      t.timestamps
    end
  end
end

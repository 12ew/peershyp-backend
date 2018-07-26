class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :item_name
      t.string :departing_city
      t.string :destination_city
      t.integer :weight
      t.string :description
      t.string :status
      t.integer :expat_id
      t.integer :trip_id
      t.string :item_cost
      t.string :item_url
      t.integer :quantity

      t.timestamps
    end
  end
end

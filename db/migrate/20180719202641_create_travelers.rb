class CreateTravelers < ActiveRecord::Migration[5.2]
  def change
    create_table :travelers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :zip_code
      t.string :identification_num
      t.string :status

      t.timestamps
    end
  end
end

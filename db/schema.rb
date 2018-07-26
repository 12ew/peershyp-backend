# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_19_204255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expats", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.string "street"
    t.string "city"
    t.string "zip_code"
    t.string "identification_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "item_name"
    t.string "departing_city"
    t.string "destination_city"
    t.integer "weight"
    t.string "description"
    t.string "status"
    t.integer "expat_id"
    t.integer "trip_id"
    t.string "item_cost"
    t.string "item_url"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travelers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.string "street"
    t.string "city"
    t.string "zip_code"
    t.string "identification_num"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string "departure_city"
    t.string "destination_city"
    t.date "depart_date"
    t.date "arrival_date"
    t.string "airline"
    t.string "flight_num"
    t.string "traveler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

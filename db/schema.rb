# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_14_231113) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "studio_id"
    t.integer "status", null: false
    t.text "message", default: ""
    t.string "card_holder_name", default: ""
    t.string "street_address", null: false
    t.string "postal_code", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "country", null: false
    t.string "card_number", null: false
    t.string "expiry_month", null: false
    t.string "expiry_year", null: false
    t.float "sub_total", null: false
    t.float "studio_time_fee", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url", null: false
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "slots", force: :cascade do |t|
    t.date "date", null: false
    t.time "from", null: false
    t.time "to", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "studio_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "studio_types_studios", id: false, force: :cascade do |t|
    t.integer "studio_id", null: false
    t.integer "studio_type_id", null: false
    t.index ["studio_id", "studio_type_id"], name: "index_studio_types_studios_on_studio_id_and_studio_type_id"
    t.index ["studio_type_id", "studio_id"], name: "index_studio_types_studios_on_studio_type_id_and_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.integer "user_id"
    t.string "name", null: false
    t.text "details", null: false
    t.integer "min_booking_time", default: 0
    t.string "studio_hours", default: ""
    t.text "past_clients", default: ""
    t.text "audio_samples", default: ""
    t.text "amenities", default: ""
    t.text "main_equipment", default: ""
    t.text "studio_rules", default: ""
    t.text "address", null: false
    t.string "latitude", null: false
    t.string "longitude", null: false
    t.text "landmark", default: ""
    t.float "price_per_hour", null: false
    t.boolean "audio_engineer_included", default: false
    t.time "opening_time", null: false
    t.time "closing_time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.text "bio", default: ""
    t.string "website", default: ""
    t.string "facebook_url", default: ""
    t.string "twitter_handle", default: ""
    t.string "instagram_handle", default: ""
    t.string "stream_url", default: ""
    t.string "email", null: false
    t.string "mobile", null: false
    t.boolean "email_verified", default: false
    t.boolean "mobile_verified", default: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "verifications", force: :cascade do |t|
    t.integer "user_id"
    t.string "token", null: false
    t.datetime "expires_at", null: false
    t.integer "kind"
    t.index ["user_id"], name: "index_verifications_on_user_id"
  end

end

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

ActiveRecord::Schema.define(version: 2020_09_08_063501) do

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.integer "user_id"
    t.integer "tour_provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer "tour_id"
    t.string "image_id"
    t.string "course_introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "tour_id"
    t.string "event_title"
    t.text "event_description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tour_provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", force: :cascade do |t|
    t.integer "tour_id"
    t.text "map_address"
    t.float "latitude"
    t.float "longitude"
    t.text "map_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers_themes_relations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tour_provider_id"
    t.integer "tour_theme_id"
    t.index ["tour_provider_id"], name: "index_providers_themes_relations_on_tour_provider_id"
    t.index ["tour_theme_id"], name: "index_providers_themes_relations_on_tour_theme_id"
  end

  create_table "tour_providers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "postal_code"
    t.string "address"
    t.string "phone_number"
    t.string "image_id"
    t.integer "tour_prefecture_id"
    t.string "tour_city"
    t.text "profile_information"
    t.text "twitter_url"
    t.text "facebook_url"
    t.text "instagram_url"
    t.text "blog_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_tour_providers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_tour_providers_on_reset_password_token", unique: true
  end

  create_table "tour_themes", force: :cascade do |t|
    t.string "tour_theme_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tours", force: :cascade do |t|
    t.integer "tour_provider_id"
    t.string "image_id"
    t.string "tour_main_phrase"
    t.text "tour_introduction"
    t.string "note"
    t.integer "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

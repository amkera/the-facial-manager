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

ActiveRecord::Schema.define(version: 2020_07_19_220004) do

  create_table "clients", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.integer "phone_number"
    t.string "first_name"
    t.string "last_name"
  end

  create_table "estheticians", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
    t.index ["email"], name: "index_estheticians_on_email", unique: true
    t.index ["reset_password_token"], name: "index_estheticians_on_reset_password_token", unique: true
  end

  create_table "facials", force: :cascade do |t|
    t.date "facial_date"
    t.time "facial_time"
    t.boolean "acne"
    t.boolean "cystic_acne"
    t.boolean "deep_pitted_scars"
    t.boolean "dryness"
    t.boolean "dullness"
    t.boolean "flakiness"
    t.boolean "flat_dark_scars"
    t.boolean "redness"
    t.boolean "wrinkles"
    t.text "other"
    t.integer "client_id"
    t.integer "esthetician_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_facials_on_client_id"
    t.index ["esthetician_id"], name: "index_facials_on_esthetician_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 2019_02_14_185604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "receving_parent_id"
    t.integer "sending_parent_id"
    t.date "date"
    t.time "time"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "USD", null: false
    t.jsonb "payment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subscription_id"
    t.string "subscription_sku"
    t.index ["subscription_id"], name: "index_orders_on_subscription_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "neighborhood"
    t.string "age"
    t.string "intrested"
    t.string "about"
    t.string "partner"
    t.string "sorientation"
    t.string "countryname"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id"
    t.string "partner_photo"
    t.index ["user_id"], name: "index_parents_on_user_id"
  end

  create_table "sexualorientations", force: :cascade do |t|
    t.string "orientation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "price_cents", default: 0, null: false
    t.string "sku"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "email_confirmed"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "confirm_token"
    t.boolean "has_profile"
    t.bigint "subscription_id"
    t.date "subscription_start_date"
    t.date "subscription_end_date"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["subscription_id"], name: "index_users_on_subscription_id"
  end

  add_foreign_key "messages", "parents", column: "receving_parent_id"
  add_foreign_key "messages", "parents", column: "sending_parent_id"
  add_foreign_key "orders", "subscriptions"
  add_foreign_key "orders", "users"
  add_foreign_key "parents", "users"
  add_foreign_key "users", "subscriptions"
end

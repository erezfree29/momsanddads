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

ActiveRecord::Schema.define(version: 2018_09_28_203832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "sexualorientation_id"
    t.string "neighborhood"
    t.bigint "countrie_id"
    t.bigint "users_id"
    t.index ["countrie_id"], name: "index_parents_on_countrie_id"
    t.index ["sexualorientation_id"], name: "index_parents_on_sexualorientation_id"
    t.index ["user_id"], name: "index_parents_on_user_id"
    t.index ["users_id"], name: "index_parents_on_users_id"
  end

  create_table "sexualorientations", force: :cascade do |t|
    t.string "orientation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "parents", "countries", column: "countrie_id"
  add_foreign_key "parents", "sexualorientations"
  add_foreign_key "parents", "users"
  add_foreign_key "parents", "users", column: "users_id"
end

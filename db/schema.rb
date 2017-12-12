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

ActiveRecord::Schema.define(version: 20171212114052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "causes", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
    t.index ["user_id"], name: "index_causes_on_user_id", using: :btree
  end

  create_table "donations", force: :cascade do |t|
    t.integer "amount_bracket"
    t.integer "year"
    t.integer "cause_id"
    t.index ["cause_id"], name: "index_donations_on_cause_id", using: :btree
  end

  create_table "mobility_profiles", force: :cascade do |t|
    t.string  "main_mobility_mode"
    t.boolean "motor_vehicle_owner"
    t.integer "user_id"
    t.index ["user_id"], name: "index_mobility_profiles_on_user_id", using: :btree
  end

  create_table "money_wishes", force: :cascade do |t|
    t.string  "wish"
    t.integer "weight"
    t.integer "user_id"
    t.index ["user_id"], name: "index_money_wishes_on_user_id", using: :btree
  end

  create_table "other_gains", force: :cascade do |t|
    t.string  "emotion"
    t.integer "user_id"
    t.index ["user_id"], name: "index_other_gains_on_user_id", using: :btree
  end

  create_table "own_gains", force: :cascade do |t|
    t.string  "emotion"
    t.integer "user_id"
    t.index ["user_id"], name: "index_own_gains_on_user_id", using: :btree
  end

  create_table "pref_mores", force: :cascade do |t|
    t.string  "preference"
    t.integer "weight"
    t.integer "user_id"
    t.index ["user_id"], name: "index_pref_mores_on_user_id", using: :btree
  end

  create_table "socio_profiles", force: :cascade do |t|
    t.integer "gender"
    t.integer "age_bracket"
    t.integer "user_id"
    t.index ["user_id"], name: "index_socio_profiles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "po_code"
    t.string "co_code"
    t.string "mob_number"
  end

  create_table "whynotmores", force: :cascade do |t|
    t.string  "reason"
    t.string  "category"
    t.integer "user_id"
    t.index ["user_id"], name: "index_whynotmores_on_user_id", using: :btree
  end

  add_foreign_key "causes", "users"
  add_foreign_key "donations", "causes"
  add_foreign_key "mobility_profiles", "users"
  add_foreign_key "money_wishes", "users"
  add_foreign_key "other_gains", "users"
  add_foreign_key "own_gains", "users"
  add_foreign_key "pref_mores", "users"
  add_foreign_key "socio_profiles", "users"
  add_foreign_key "whynotmores", "users"
end

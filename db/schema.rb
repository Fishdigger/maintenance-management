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

ActiveRecord::Schema.define(version: 20170622000611) do

  create_table "locations", force: :cascade do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "nickname"
  end

  create_table "parts", force: :cascade do |t|
    t.string   "part_number"
    t.integer  "vendor_id"
    t.integer  "on_hand"
    t.integer  "threshold"
    t.string   "order_url"
    t.decimal  "cost"
    t.string   "unit_of_issue"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "systems", force: :cascade do |t|
    t.string   "part_number"
    t.string   "serial_number"
    t.string   "name"
    t.integer  "vendor_id"
    t.date     "install_date"
    t.date     "decommission_date"
    t.string   "family"
    t.decimal  "cost"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "location_id"
  end

  create_table "technicians", force: :cascade do |t|
    t.string   "name"
    t.string   "employee_number"
    t.decimal  "payrate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "location_id"
    t.integer  "role_id"
  end

end

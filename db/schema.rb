# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140724084809) do

  create_table "aa_regions", force: true do |t|
    t.string   "province"
    t.string   "city"
    t.string   "district"
    t.integer  "aa_vendor_id"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aa_service_orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aa_trailers", force: true do |t|
    t.string   "license_no"
    t.string   "car_type"
    t.integer  "aa_vendor_id"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aa_vendors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "disabled_at"
  end

  create_table "aa_workers", force: true do |t|
    t.string   "name"
    t.string   "mobile"
    t.string   "id_no"
    t.string   "driving_license_no"
    t.string   "qualification_no"
    t.integer  "aa_vendor_id"
    t.integer  "vendor_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_owners", force: true do |t|
    t.integer  "user_id"
    t.string   "car_license_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "no"
    t.string   "name"
    t.string   "province"
    t.string   "city"
    t.string   "region"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_groups", force: true do |t|
    t.string   "no"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", force: true do |t|
    t.integer  "vendor_id"
    t.string   "imei"
    t.string   "account_name"
    t.string   "account_password"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "did_binds", force: true do |t|
    t.string   "did_number"
    t.integer  "vendor_id"
    t.string   "vendor_phone"
    t.string   "customer_phone"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dids", force: true do |t|
    t.string   "number"
    t.integer  "vendor_id"
    t.string   "vendor_phone"
    t.string   "customer_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: true do |t|
    t.string   "code"
    t.string   "province"
    t.string   "city"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_orders", force: true do |t|
    t.integer  "car_owner_user_id"
    t.integer  "vendor_user_id"
    t.integer  "customer_user_id"
    t.string   "no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "no"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "no"
    t.string   "username"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "name"
    t.integer  "vendor_id"
    t.integer  "car_owner_id"
    t.integer  "customer_id"
  end

  create_table "vendors", force: true do |t|
    t.string   "no"
    t.string   "name"
    t.string   "province"
    t.string   "city"
    t.string   "region"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mobile"
    t.string   "telephone"
    t.string   "fax"
    t.string   "email"
    t.text     "memo"
    t.string   "status"
    t.datetime "disabled_at"
    t.integer  "aa_vendor_id"
    t.string   "contact"
    t.string   "contact_position"
  end

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end

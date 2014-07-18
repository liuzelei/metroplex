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

ActiveRecord::Schema.define(version: 20140718030644) do

  create_table "aa_service_orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aa_vendors", force: true do |t|
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
  end

end

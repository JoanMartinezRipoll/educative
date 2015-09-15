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

ActiveRecord::Schema.define(version: 20150914161646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.integer  "weight"
    t.integer  "actable_id"
    t.string   "actable_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "birds", force: :cascade do |t|
    t.integer  "eggs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_shareholders", force: :cascade do |t|
    t.integer  "hrm_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mamals", force: :cascade do |t|
    t.integer  "pregnancy_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_shareholders", force: :cascade do |t|
    t.string   "last_name"
    t.date     "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shareholders", force: :cascade do |t|
    t.string   "name"
    t.integer  "trustee_id"
    t.integer  "type_id"
    t.string   "type_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shareholders", ["type_type", "type_id"], name: "index_shareholders_on_type_type_and_type_id", using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "color"
    t.integer  "register_num"
    t.string   "type"
    t.integer  "wheel_number"
    t.integer  "sail_lenght"
    t.integer  "person_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "vehicles", ["person_id"], name: "index_vehicles_on_person_id", using: :btree

end

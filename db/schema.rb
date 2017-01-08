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

ActiveRecord::Schema.define(version: 20161222013415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.text     "current_weather"
    t.integer  "walk_score"
    t.string   "image"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.decimal  "cost_of_living_index", precision: 6, scale: 2
  end

  create_table "job_by_cities", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "job_id"
    t.integer  "median_salary"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "score"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.integer  "average_salary"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end

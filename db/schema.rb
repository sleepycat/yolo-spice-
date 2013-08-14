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

ActiveRecord::Schema.define(version: 20130813213011) do

  create_table "magazines", force: true do |t|
    t.string   "title"
    t.string   "payment"
    t.string   "magazineformat"
    t.text     "submissionrestriction"
    t.string   "genre"
    t.string   "publicationcycle"
    t.string   "submissionlimit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "address_number"
    t.integer  "unit_number"
    t.string   "street_name"
    t.string   "city_name"
    t.string   "province_name"
    t.string   "country_name"
  end

end

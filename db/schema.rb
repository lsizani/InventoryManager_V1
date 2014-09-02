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

ActiveRecord::Schema.define(version: 20140902094853) do

  create_table "orders", force: true do |t|
    t.string   "requested_by"
    t.date     "requested_date"
    t.decimal  "amount_requested"
    t.string   "reagent_name"
    t.string   "manufacturer"
    t.string   "catalog_no"
    t.string   "lot_no"
    t.string   "supplier"
    t.string   "order_no"
    t.date     "ordered_date"
    t.boolean  "delivered"
    t.date     "delivery_date"
    t.decimal  "amount_delivered"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reagents", force: true do |t|
    t.string   "reagent_name"
    t.string   "manufacturer"
    t.string   "catalog_no"
    t.string   "lot_no"
    t.string   "supplier"
    t.string   "order_no"
    t.date     "ordered_date"
    t.boolean  "delivered"
    t.date     "delivered_date"
    t.decimal  "amount_delivered"
    t.date     "updated_date"
    t.date     "expiration_date"
    t.string   "item_lot_no"
    t.string   "item_cat_no"
    t.string   "storage_temp_kit"
    t.string   "storage_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

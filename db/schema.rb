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

ActiveRecord::Schema.define(version: 20140604225027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "volume"
    t.integer  "user_stock_id"
    t.integer  "volume_remaining"
    t.decimal  "price"
    t.decimal  "value"
    t.decimal  "cost_basis"
    t.decimal  "capital_gain"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["type"], name: "index_orders_on_type", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree
  add_index "orders", ["user_stock_id"], name: "index_orders_on_user_stock_id", using: :btree

end

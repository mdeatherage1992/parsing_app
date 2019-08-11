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

ActiveRecord::Schema.define(version: 2019_08_07_160220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "units_sold"
    t.integer "unit_price"
    t.integer "unit_cost"
    t.integer "total_cost"
    t.integer "total_profit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id"
    t.bigint "country_id"
    t.bigint "sales_channel_id"
    t.bigint "item_type_id"
    t.string "order_priority"
    t.datetime "ship_date"
    t.integer "total_revenue"
    t.string "order_date"
    t.index ["country_id"], name: "index_orders_on_country_id"
    t.index ["item_type_id"], name: "index_orders_on_item_type_id"
    t.index ["region_id"], name: "index_orders_on_region_id"
    t.index ["sales_channel_id"], name: "index_orders_on_sales_channel_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "mapblklot"
    t.string "blklot"
    t.string "block_num"
    t.string "lot_num"
    t.string "from_st"
    t.string "to_st"
    t.string "street"
    t.string "st_type"
    t.string "odd_even"
    t.geometry "location", limit: {:srid=>0, :type=>"geometry"}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.geometry "polygon_data", limit: {:srid=>0, :type=>"st_polygon"}
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_channels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "countries"
  add_foreign_key "orders", "item_types"
  add_foreign_key "orders", "regions"
  add_foreign_key "orders", "sales_channels"
end

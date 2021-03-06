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

ActiveRecord::Schema.define(version: 20170916133931) do

  create_table "asset_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assets", force: :cascade do |t|
    t.string "brand"
    t.string "product_name"
    t.string "model"
    t.decimal "year"
    t.date "purchased_date"
    t.decimal "price"
    t.string "shop_name"
    t.boolean "has_warranty"
    t.date "warranty_void_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "asset_category_id"
    t.index ["asset_category_id"], name: "index_assets_on_asset_category_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "asset_id"
    t.text "body"
    t.datetime "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_notes_on_asset_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end

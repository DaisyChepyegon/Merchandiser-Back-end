# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_19_145631) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "managers", force: :cascade do |t|
    t.string "username"
    t.string "image"
    t.string "email"
    t.integer "phone_number"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchandisers", force: :cascade do |t|
    t.string "username"
    t.string "image"
    t.string "email"
    t.integer "phone_number"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outlets", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.bigint "merchandiser_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchandiser_id"], name: "index_outlets_on_merchandiser_id"
  end

  create_table "route_plans", force: :cascade do |t|
    t.bigint "merchandiser_id", null: false
    t.bigint "manager_id", null: false
    t.bigint "outlet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_route_plans_on_manager_id"
    t.index ["merchandiser_id"], name: "index_route_plans_on_merchandiser_id"
    t.index ["outlet_id"], name: "index_route_plans_on_outlet_id"
  end

  add_foreign_key "outlets", "merchandisers"
  add_foreign_key "route_plans", "managers"
  add_foreign_key "route_plans", "merchandisers"
  add_foreign_key "route_plans", "outlets"
end

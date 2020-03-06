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

ActiveRecord::Schema.define(version: 20200305195341) do

  create_table "food_measures", force: :cascade do |t|
    t.integer  "food_id"
    t.integer  "measure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_food_measures_on_food_id"
    t.index ["measure_id"], name: "index_food_measures_on_measure_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name",          limit: 128, null: false
    t.integer  "grams"
    t.integer  "calories"
    t.float    "carbohydrates"
    t.float    "proteins"
    t.float    "total_fats"
    t.float    "satured_fats"
    t.float    "dietary_fiber"
    t.float    "sodium_in_mg"
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["user_id"], name: "index_foods_on_user_id"
  end

  create_table "meal_foods", force: :cascade do |t|
    t.integer  "meal_id"
    t.integer  "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_meal_foods_on_food_id"
    t.index ["meal_id"], name: "index_meal_foods_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string   "type",                    null: false
    t.string   "comment",    limit: 2048
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "measures", force: :cascade do |t|
    t.string   "name",       limit: 128, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "name"
    t.date     "date_of_birth"
    t.float    "height"
    t.float    "weight"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

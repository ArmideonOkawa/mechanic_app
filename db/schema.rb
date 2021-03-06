# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_04_150457) do

  create_table "appointments", force: :cascade do |t|
    t.integer "problem_id", null: false
    t.integer "mechanic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mechanic_id"], name: "index_appointments_on_mechanic_id"
    t.index ["problem_id"], name: "index_appointments_on_problem_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "color"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "mechanics", force: :cascade do |t|
    t.string "name"
    t.string "specialty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "problems", force: :cascade do |t|
    t.integer "car_id", null: false
    t.string "problem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_problems_on_car_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "mechanics"
  add_foreign_key "appointments", "problems"
  add_foreign_key "cars", "users"
  add_foreign_key "problems", "cars"
end

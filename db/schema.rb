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

ActiveRecord::Schema.define(version: 2019_04_18_003957) do

  create_table "abet_grades", force: :cascade do |t|
    t.integer "courses_user_id"
    t.integer "abet_id"
    t.integer "poor", default: 50
    t.integer "acceptable", default: 75
    t.integer "exceeds", default: 90
    t.integer "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "poor_grade"
    t.integer "exceeds_grade"
    t.index ["abet_id"], name: "index_abet_grades_on_abet_id"
    t.index ["courses_user_id"], name: "index_abet_grades_on_courses_user_id"
  end

  create_table "abets", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "abets_courses", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "abet_id", null: false
    t.integer "grade", default: 0
    t.integer "user_id"
    t.index ["user_id"], name: "index_abets_courses_on_user_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "username"
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
    t.index ["username"], name: "index_accounts_on_username", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_number"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "lname"
    t.string "fname"
    t.string "title"
    t.string "office"
    t.string "email"
    t.string "phone"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end

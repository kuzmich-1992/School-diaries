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

ActiveRecord::Schema.define(version: 2020_11_29_041141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.string "day_of_week"
    t.integer "date"
    t.string "subject_1"
    t.string "home_task_1"
    t.integer "grade_1"
    t.string "subject_2"
    t.string "home_task_2"
    t.integer "grade_2"
    t.string "subject_3"
    t.string "home_task_3"
    t.integer "grade_3"
    t.string "subject_4"
    t.string "home_task_4"
    t.integer "grade_4"
    t.string "subject_5"
    t.string "home_task_5"
    t.integer "grade_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "week_id"
    t.index ["week_id"], name: "index_days_on_week_id"
  end

  create_table "diaries", force: :cascade do |t|
    t.string "name", null: false
    t.string "surname", null: false
    t.string "high_school_class", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.string "month", null: false
    t.string "behavior", null: false
    t.text "teacher_notes"
    t.integer "number_of_missed_lessons", null: false
    t.bigint "diary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diary_id"], name: "index_weeks_on_diary_id"
  end

  add_foreign_key "days", "weeks"
  add_foreign_key "weeks", "diaries"
end

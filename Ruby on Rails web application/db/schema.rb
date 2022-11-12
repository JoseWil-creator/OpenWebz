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

ActiveRecord::Schema[7.0].define(version: 2022_11_07_002215) do
  create_table "courses", force: :cascade do |t|
    t.integer "prefix_id", null: false
    t.integer "number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefix_id"], name: "index_courses_on_prefix_id"
  end

  create_table "prefixes", force: :cascade do |t|
    t.string "prefix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "name"
    t.integer "student_id"
    t.string "email"
    t.integer "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "Crn"
    t.integer "course_id", null: false
    t.integer "semester_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_sections_on_course_id"
    t.index ["semester_id"], name: "index_sections_on_semester_id"
  end

  create_table "sections_students", force: :cascade do |t|
    t.integer "student_id"
    t.integer "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_sections_students_on_section_id"
    t.index ["student_id"], name: "index_sections_students_on_student_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "semester"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "student_name"
    t.integer "student_id"
    t.string "student_email"
    t.integer "student_phone"
    t.string "physical_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "prefixes"
  add_foreign_key "sections", "courses"
  add_foreign_key "sections", "semesters"
  add_foreign_key "sections_students", "sections"
  add_foreign_key "sections_students", "students"
end

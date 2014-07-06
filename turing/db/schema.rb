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

ActiveRecord::Schema.define(version: 20140706155320) do

  create_table "activities", force: true do |t|
    t.integer  "structure_id"
    t.string   "type"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "activities_teachers", id: false, force: true do |t|
    t.integer "teacher_id",  null: false
    t.integer "activity_id", null: false
  end

  add_index "activities_teachers", ["activity_id"], name: "index_activities_teachers_on_activity_id"
  add_index "activities_teachers", ["teacher_id"], name: "index_activities_teachers_on_teacher_id"

  create_table "boards", force: true do |t|
    t.integer  "school_class_id"
    t.date     "date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "circulars", force: true do |t|
    t.date     "date"
    t.text     "text"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "circulars_school_classes", id: false, force: true do |t|
    t.integer "school_class_id", null: false
    t.integer "circular_id",     null: false
  end

  add_index "circulars_school_classes", ["circular_id"], name: "index_circulars_school_classes_on_circular_id"
  add_index "circulars_school_classes", ["school_class_id"], name: "index_circulars_school_classes_on_school_class_id"

  create_table "materials", force: true do |t|
    t.string   "name"
    t.string   "isbn"
    t.string   "publisher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials_school_classes", id: false, force: true do |t|
    t.integer "school_class_id", null: false
    t.integer "material_id",     null: false
  end

  add_index "materials_school_classes", ["material_id"], name: "index_materials_school_classes_on_material_id"
  add_index "materials_school_classes", ["school_class_id"], name: "index_materials_school_classes_on_school_class_id"

  create_table "office_hours", force: true do |t|
    t.integer  "teacher_id"
    t.string   "day"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hour"
    t.integer  "minute"
  end

  create_table "school_classes", force: true do |t|
    t.integer  "year"
    t.string   "section"
    t.text     "timetable"
    t.text     "council"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "structures", force: true do |t|
    t.string   "room"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "age"
    t.string   "photo_url"
    t.string   "curriculum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachings", force: true do |t|
    t.integer  "teacher_id"
    t.integer  "school_class_id"
    t.string   "subject"
    t.string   "coordinator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

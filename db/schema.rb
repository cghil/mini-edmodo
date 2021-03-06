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

ActiveRecord::Schema.define(version: 20160108201908) do

  create_table "classrooms", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.string   "course_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "classrooms", ["student_id"], name: "index_classrooms_on_student_id"
  add_index "classrooms", ["teacher_id"], name: "index_classrooms_on_teacher_id"

  create_table "users", force: :cascade do |t|
    t.string   "username",   null: false
    t.integer  "role",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end

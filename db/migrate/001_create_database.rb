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

class CreateDatabase < ActiveRecord::Migration
  def self.up
    # insert schema.rb here

ActiveRecord::Schema.define(version: 0) do

  create_table "assignment", primary_key: ["assignment_id", "student_id", "course_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "assignment_id",              null: false
    t.string  "assignment_name", limit: 45
    t.integer "student_id",                 null: false
    t.integer "course_id",                  null: false
    t.string  "grade",           limit: 1
    t.index ["course_id"], name: "course_idx", using: :btree
    t.index ["student_id"], name: "student_idx", using: :btree
  end

  create_table "course", primary_key: "course_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "course_name", limit: 45
    t.integer "capacity"
  end

  create_table "first_exam", primary_key: ["f_exam_id", "course_id", "student_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "f_exam_id",            null: false
    t.integer "course_id",            null: false
    t.integer "student_id",           null: false
    t.string  "grade",      limit: 1
    t.index ["course_id"], name: "course_idx", using: :btree
    t.index ["student_id"], name: "student_idx", using: :btree
  end

  create_table "quiz", primary_key: ["quiz_id", "student_id", "course_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "quiz_id",               null: false
    t.string  "quiz_title", limit: 45
    t.string  "grade",      limit: 1
    t.integer "student_id",            null: false
    t.integer "course_id",             null: false
    t.index ["course_id"], name: "course_idx", using: :btree
    t.index ["student_id"], name: "student_idx", using: :btree
  end

  create_table "second_exam", primary_key: ["s_exam_id", "course_id", "student_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "s_exam_id",            null: false
    t.integer "course_id",            null: false
    t.integer "student_id",           null: false
    t.string  "grade",      limit: 1
    t.index ["course_id"], name: "course_idx", using: :btree
    t.index ["student_id"], name: "student_idx", using: :btree
  end

  create_table "student", primary_key: "student_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name", limit: 45
    t.string "last_name",  limit: 45
  end

  add_foreign_key "assignment", "course", primary_key: "course_id", name: "fk_course1"
  add_foreign_key "assignment", "student", primary_key: "student_id", name: "fk_student_assignment"
  add_foreign_key "first_exam", "course", primary_key: "course_id", name: "fk_course3"
  add_foreign_key "first_exam", "student", primary_key: "student_id", name: "fk_student_first_exam"
  add_foreign_key "quiz", "course", primary_key: "course_id", name: "fk_course2"
  add_foreign_key "quiz", "student", primary_key: "student_id", name: "fk_student_quiz"
  add_foreign_key "second_exam", "course", primary_key: "course_id", name: "fk_course4"
  add_foreign_key "second_exam", "student", primary_key: "student_id", name: "fk_student_second_exam"
end

  end

  def self.down
    # drop all the tables if you really need
    # to support migration back to version 0
  end
end
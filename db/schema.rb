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

ActiveRecord::Schema.define(version: 20150911132457) do

  create_table "class_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "number"
    t.text     "direction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_rooms", id: false, force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "room_id",  null: false
  end

  add_index "groups_rooms", ["group_id", "room_id"], name: "index_groups_rooms_on_group_id_and_room_id"
  add_index "groups_rooms", ["room_id", "group_id"], name: "index_groups_rooms_on_room_id_and_group_id"

  create_table "groups_subjects", id: false, force: :cascade do |t|
    t.integer "group_id",   null: false
    t.integer "subject_id", null: false
  end

  add_index "groups_subjects", ["group_id", "subject_id"], name: "index_groups_subjects_on_group_id_and_subject_id"
  add_index "groups_subjects", ["subject_id", "group_id"], name: "index_groups_subjects_on_subject_id_and_group_id"

  create_table "groups_teachers", id: false, force: :cascade do |t|
    t.integer "group_id",   null: false
    t.integer "teacher_id", null: false
  end

  add_index "groups_teachers", ["group_id", "teacher_id"], name: "index_groups_teachers_on_group_id_and_teacher_id"
  add_index "groups_teachers", ["teacher_id", "group_id"], name: "index_groups_teachers_on_teacher_id_and_group_id"

  create_table "rooms", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.datetime "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

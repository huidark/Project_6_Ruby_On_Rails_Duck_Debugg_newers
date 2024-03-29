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

ActiveRecord::Schema[7.0].define(version: 2022_04_23_165518) do
  create_table "groups", force: :cascade do |t|
    t.string "groupname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "projectname"
    t.string "projectdescription"
    t.date "startdate"
    t.date "enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comment"
    t.integer "score"
    t.integer "project_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_id"
  end

  add_foreign_key "projects", "groups"
  add_foreign_key "reviews", "projects"
  add_foreign_key "reviews", "users"
  add_foreign_key "users", "groups"
end

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

ActiveRecord::Schema.define(version: 20190910211924) do

  create_table "course_modules", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "video_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort_by"
    t.index ["course_id"], name: "index_course_modules_on_course_id"
    t.index ["sort_by"], name: "index_course_modules_on_sort_by", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "main_video_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "glossary_categories", force: :cascade do |t|
    t.string "name"
    t.string "color_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "glossary_items", force: :cascade do |t|
    t.string "title"
    t.text "definition"
    t.integer "glossary_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["glossary_category_id"], name: "index_glossary_items_on_glossary_category_id"
  end

  create_table "project_students", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_students_on_project_id"
    t.index ["user_id"], name: "index_project_students_on_user_id"
  end

  create_table "project_teachers", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_teachers_on_project_id"
    t.index ["user_id"], name: "index_project_teachers_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "course_id"
    t.integer "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_projects_on_course_id"
    t.index ["semester_id"], name: "index_projects_on_semester_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "course_module_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_module_id"], name: "index_sections_on_course_module_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "season"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season", "year"], name: "index_semesters_on_season_and_year", unique: true
  end

  create_table "user_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

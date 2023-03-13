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

ActiveRecord::Schema[7.0].define(version: 2023_03_13_185653) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "founder_id"
    t.bigint "developer_id"
  end

  create_table "developer_profile_spoken_languages", force: :cascade do |t|
    t.bigint "spoken_language_id", null: false
    t.bigint "developer_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_profile_id"], name: "index_developer_profile_on_developer_id"
    t.index ["spoken_language_id"], name: "index_developer_languages_on_developer_id"
  end

  create_table "developer_profile_technologies", force: :cascade do |t|
    t.bigint "developer_profile_id", null: false
    t.bigint "technology_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_profile_id"], name: "index_developer_profile_technologies_on_developer_profile_id"
    t.index ["technology_id"], name: "index_developer_profile_technologies_on_technology_id"
  end

  create_table "developer_profiles", force: :cascade do |t|
    t.integer "years_of_experience"
    t.bigint "user_id", null: false
    t.string "school"
    t.string "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.index ["user_id"], name: "index_developer_profiles_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "developer_profile_id", null: false
    t.integer "hourly_rate"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_profile_id"], name: "index_offers_on_developer_profile_id"
    t.index ["project_id"], name: "index_offers_on_project_id"
  end

  create_table "project_technologies", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "technology_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_technologies_on_project_id"
    t.index ["technology_id"], name: "index_project_technologies_on_technology_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "description"
    t.string "industry"
    t.bigint "spoken_language_id"
    t.integer "number_of_developers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_developpers"
    t.index ["spoken_language_id"], name: "index_projects_on_spoken_language_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "spoken_languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "top_picks", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "developer_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_profile_id"], name: "index_top_picks_on_developer_profile_id"
    t.index ["project_id"], name: "index_top_picks_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "role", default: 0, null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "developer_profile_spoken_languages", "developer_profiles"
  add_foreign_key "developer_profile_spoken_languages", "spoken_languages"
  add_foreign_key "developer_profile_technologies", "developer_profiles"
  add_foreign_key "developer_profile_technologies", "technologies"
  add_foreign_key "developer_profiles", "users"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "offers", "developer_profiles"
  add_foreign_key "offers", "projects"
  add_foreign_key "project_technologies", "projects"
  add_foreign_key "project_technologies", "technologies"
  add_foreign_key "projects", "spoken_languages"
  add_foreign_key "projects", "users"
  add_foreign_key "top_picks", "developer_profiles"
  add_foreign_key "top_picks", "projects"
end

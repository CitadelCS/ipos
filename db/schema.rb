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

ActiveRecord::Schema.define(version: 2021_04_21_180117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_mailbox_inbound_emails", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.string "message_id", null: false
    t.string "message_checksum", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_id", "message_checksum"], name: "index_action_mailbox_inbound_emails_uniqueness", unique: true
  end

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "discussion_id", null: false
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discussion_id"], name: "index_comments_on_discussion_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "prefix"
    t.string "name"
    t.integer "number"
    t.integer "section"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "semesters_id"
    t.index ["semesters_id"], name: "index_courses_on_semesters_id"
  end

  create_table "discussions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plans", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nameofplan"
    t.bigint "student_id"
    t.string "semester1"
    t.string "course1a"
    t.string "course1b"
    t.string "course1c"
    t.string "course1d"
    t.string "semester2"
    t.string "course2a"
    t.string "course2b"
    t.string "course2c"
    t.string "course2d"
    t.string "semester3"
    t.string "course3a"
    t.string "course3b"
    t.string "course3c"
    t.string "course3d"
    t.string "semester4"
    t.string "course4a"
    t.string "course4b"
    t.string "course4c"
    t.string "course4d"
    t.string "semester5"
    t.string "course5a"
    t.string "course5b"
    t.string "course5c"
    t.string "course5d"
    t.string "semester6"
    t.string "course6a"
    t.string "course6b"
    t.string "course6c"
    t.string "course6d"
    t.string "semester7"
    t.string "course7a"
    t.string "course7b"
    t.string "course7c"
    t.string "course7d"
    t.string "semester8"
    t.string "course8a"
    t.string "course8b"
    t.string "course8c"
    t.string "course8d"
    t.string "semester9"
    t.string "course9a"
    t.string "course9b"
    t.string "course9c"
    t.string "course9d"
    t.string "semester10"
    t.string "course10a"
    t.string "course10b"
    t.string "course10c"
    t.string "course10d"
    t.string "semester11"
    t.string "course11a"
    t.string "course11b"
    t.string "course11c"
    t.string "course11d"
    t.string "semester12"
    t.string "course12a"
    t.string "course12b"
    t.string "course12c"
    t.string "course12d"
    t.index ["student_id"], name: "index_plans_on_student_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "Name"
    t.integer "CWID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "programdirector_id", null: false
    t.index ["programdirector_id"], name: "index_professors_on_programdirector_id"
  end

  create_table "programdirectors", force: :cascade do |t|
    t.string "Name"
    t.integer "CWID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string "course1"
    t.string "course2"
    t.string "course3"
    t.string "course4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "season"
    t.integer "year"
    t.bigint "plan_id"
    t.index ["plan_id"], name: "index_semesters_on_plan_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "Name"
    t.integer "CWID"
    t.string "Concentration"
    t.string "Advisor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "professor_id", null: false
    t.index ["professor_id"], name: "index_students_on_professor_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.boolean "admin", default: false, null: false
    t.boolean "student", default: false, null: false
    t.boolean "professor", default: false, null: false
    t.boolean "programdirector", default: false, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "discussions"
  add_foreign_key "comments", "users"
  add_foreign_key "courses", "semesters", column: "semesters_id"
  add_foreign_key "professors", "programdirectors"
  add_foreign_key "semesters", "plans"
  add_foreign_key "students", "professors"
end

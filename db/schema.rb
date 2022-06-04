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

ActiveRecord::Schema[7.0].define(version: 2022_06_04_134803) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_admin_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "announcement_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.index ["name"], name: "index_announcement_categories_on_name", unique: true
  end

  create_table "announcements", force: :cascade do |t|
    t.bigint "announcement_category_id", null: false
    t.string "title", null: false
    t.text "contents", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["announcement_category_id"], name: "index_announcements_on_announcement_category_id"
  end

  create_table "business_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_business_categories_on_name", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.string "company_url", default: ""
    t.string "contact_phone_number", null: false
    t.bigint "business_category_id", null: false
    t.string "address"
    t.text "business_description", default: ""
    t.integer "number_of_employee"
    t.string "contact_name", null: false
    t.string "contact_email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gif_url"
    t.boolean "is_public", default: true
    t.index ["business_category_id"], name: "index_companies_on_business_category_id"
    t.index ["name"], name: "index_companies_on_name", unique: true
  end

  create_table "course_attendance_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_course_attendance_types_on_name", unique: true
  end

  create_table "course_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.index ["name"], name: "index_course_categories_on_name", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", default: ""
    t.date "event_date", null: false
    t.date "deadline"
    t.string "place"
    t.string "target"
    t.integer "acceptable_number"
    t.text "others"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_category_id", null: false
    t.bigint "course_attendance_type_id", null: false
    t.text "announcement"
    t.index ["course_attendance_type_id"], name: "index_courses_on_course_attendance_type_id"
    t.index ["course_category_id"], name: "index_courses_on_course_category_id"
  end

  create_table "employee_course_orders", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_employee_course_orders_on_course_id"
    t.index ["employee_id", "course_id"], name: "index_employee_course_orders_on_employee_id_and_course_id", unique: true
    t.index ["employee_id"], name: "index_employee_course_orders_on_employee_id"
  end

  create_table "employee_details", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employee_details_on_employee_id", unique: true
  end

  create_table "employees", force: :cascade do |t|
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id", null: false
    t.index ["company_id"], name: "index_employees_on_company_id"
    t.index ["confirmation_token"], name: "index_employees_on_confirmation_token", unique: true
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "internship_attendance_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_internship_attendance_types_on_name", unique: true
  end

  create_table "internship_carts", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "internship_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["internship_id"], name: "index_internship_carts_on_internship_id"
    t.index ["student_id", "internship_id"], name: "index_internship_carts_on_student_id_and_internship_id", unique: true
    t.index ["student_id"], name: "index_internship_carts_on_student_id"
  end

  create_table "internship_categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", default: ""
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_internship_categories_on_name", unique: true
  end

  create_table "internship_orders", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "internship_id", null: false
    t.boolean "is_contacted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["internship_id"], name: "index_internship_orders_on_internship_id"
    t.index ["student_id", "internship_id"], name: "index_internship_orders_on_student_id_and_internship_id", unique: true
    t.index ["student_id"], name: "index_internship_orders_on_student_id"
  end

  create_table "internships", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "title", null: false
    t.text "description", default: ""
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.date "deadline"
    t.string "location", default: ""
    t.string "target", default: ""
    t.integer "acceptable_number"
    t.text "others"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gif_url"
    t.boolean "is_public", default: true
    t.bigint "internship_category_id", null: false
    t.bigint "internship_attendance_type_id", null: false
    t.index ["company_id"], name: "index_internships_on_company_id"
    t.index ["internship_attendance_type_id"], name: "index_internships_on_internship_attendance_type_id"
    t.index ["internship_category_id"], name: "index_internships_on_internship_category_id"
  end

  create_table "nagaoka_companies", force: :cascade do |t|
    t.integer "number", null: false
    t.string "name", null: false
    t.string "company_url"
    t.bigint "business_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_category_id"], name: "index_nagaoka_companies_on_business_category_id"
    t.index ["name"], name: "index_nagaoka_companies_on_name", unique: true
    t.index ["number"], name: "index_nagaoka_companies_on_number", unique: true
  end

  create_table "student_course_orders", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_student_course_orders_on_course_id"
    t.index ["student_id", "course_id"], name: "index_student_course_orders_on_student_id_and_course_id", unique: true
    t.index ["student_id"], name: "index_student_course_orders_on_student_id"
  end

  create_table "student_details", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.string "name", null: false
    t.boolean "disable_notification", default: false
    t.date "birthday", null: false
    t.string "school_name", null: false
    t.string "department", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_student_details_on_student_id", unique: true
  end

  create_table "students", force: :cascade do |t|
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_students_on_confirmation_token", unique: true
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "announcements", "announcement_categories"
  add_foreign_key "companies", "business_categories"
  add_foreign_key "courses", "course_attendance_types"
  add_foreign_key "courses", "course_categories"
  add_foreign_key "employee_course_orders", "courses"
  add_foreign_key "employee_course_orders", "employees"
  add_foreign_key "employee_details", "employees"
  add_foreign_key "employees", "companies"
  add_foreign_key "internship_carts", "internships"
  add_foreign_key "internship_carts", "students"
  add_foreign_key "internship_orders", "internships"
  add_foreign_key "internship_orders", "students"
  add_foreign_key "internships", "companies"
  add_foreign_key "internships", "internship_attendance_types"
  add_foreign_key "internships", "internship_categories"
  add_foreign_key "nagaoka_companies", "business_categories"
  add_foreign_key "student_course_orders", "courses"
  add_foreign_key "student_course_orders", "students"
  add_foreign_key "student_details", "students"
end

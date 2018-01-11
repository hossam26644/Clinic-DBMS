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

ActiveRecord::Schema.define(version: 20170212102952) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "time"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "fees", force: :cascade do |t|
    t.integer  "patient_id"
    t.float    "examination_fees"
    t.float    "medication_fees"
    t.float    "extra_fees"
    t.float    "discount"
    t.float    "total"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["patient_id"], name: "index_fees_on_patient_id"
  end

  create_table "histories", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "current_disease"
    t.text     "family_history",   limit: 2147483647
    t.text     "diseases_history", limit: 2147483647
    t.text     "doctor_notes",     limit: 2147483647
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["patient_id"], name: "index_histories_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.float    "p_ssn"
    t.string   "p_fname"
    t.string   "p_minit"
    t.string   "p_lname"
    t.date     "p_birthdate"
    t.string   "p_phonenume"
    t.string   "p_address_string"
    t.text     "p_complain",       limit: 2147483647
    t.date     "p_age"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "prescreptions", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "diagnosis"
    t.text     "medications",      limit: 2147483647
    t.text     "doctors_comments", limit: 2147483647
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["patient_id"], name: "index_prescreptions_on_patient_id"
  end

  add_foreign_key "appointments", "patients"
  add_foreign_key "fees", "patients"
  add_foreign_key "histories", "patients"
  add_foreign_key "prescreptions", "patients"
end

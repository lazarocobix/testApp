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

ActiveRecord::Schema.define(version: 2019_04_18_065248) do

  create_table "admissions", force: :cascade do |t|
    t.date "moment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admissions_diagnoses", id: false, force: :cascade do |t|
    t.integer "admission_id"
    t.integer "diagnosis_id"
    t.index ["admission_id"], name: "index_admissions_diagnoses_on_admission_id"
    t.index ["diagnosis_id"], name: "index_admissions_diagnoses_on_diagnosis_id"
  end

  create_table "admissions_observations", id: false, force: :cascade do |t|
    t.integer "admission_id"
    t.integer "observation_id"
    t.index ["admission_id"], name: "index_admissions_observations_on_admission_id"
    t.index ["observation_id"], name: "index_admissions_observations_on_observation_id"
  end

  create_table "admissions_symptoms", id: false, force: :cascade do |t|
    t.integer "admission_id"
    t.integer "symptom_id"
    t.index ["admission_id"], name: "index_admissions_symptoms_on_admission_id"
    t.index ["symptom_id"], name: "index_admissions_symptoms_on_symptom_id"
  end

  create_table "allergies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allergies_patients", id: false, force: :cascade do |t|
    t.integer "allergy_id"
    t.integer "patient_id"
    t.index ["allergy_id"], name: "index_allergies_patients_on_allergy_id"
    t.index ["patient_id"], name: "index_allergies_patients_on_patient_id"
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string "coding_system"
    t.string "code"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnoses_patients", id: false, force: :cascade do |t|
    t.integer "diagnosis_id"
    t.integer "patient_id"
    t.index ["diagnosis_id"], name: "index_diagnoses_patients_on_diagnosis_id"
    t.index ["patient_id"], name: "index_diagnoses_patients_on_patient_id"
  end

  create_table "diagnostic_procedures", force: :cascade do |t|
    t.text "description"
    t.date "moment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnostic_procedures_patients", id: false, force: :cascade do |t|
    t.integer "diagnostic_procedure_id"
    t.integer "patient_id"
    t.index ["patient_id"], name: "index_diagnostic_procedures_patients_on_patient_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medication_orders", force: :cascade do |t|
    t.string "name"
    t.integer "unit"
    t.decimal "dosage"
    t.integer "route"
    t.integer "order_frequency_id"
    t.text "necessity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_frequency_id"], name: "index_medication_orders_on_order_frequency_id"
  end

  create_table "medication_orders_patients", id: false, force: :cascade do |t|
    t.integer "medication_order_id"
    t.integer "patient_id"
    t.index ["medication_order_id"], name: "index_medication_orders_patients_on_medication_order_id"
    t.index ["patient_id"], name: "index_medication_orders_patients_on_patient_id"
  end

  create_table "observations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "moment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_frequencies", force: :cascade do |t|
    t.string "value"
    t.integer "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.integer "age"
    t.string "middle_name"
    t.string "last_name"
    t.string "mr"
    t.date "dob"
    t.integer "gender"
    t.integer "admission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admission_id"], name: "index_patients_on_admission_id"
  end

  create_table "patients_treatments", id: false, force: :cascade do |t|
    t.integer "treatment_id"
    t.integer "patient_id"
    t.index ["patient_id"], name: "index_patients_treatments_on_patient_id"
    t.index ["treatment_id"], name: "index_patients_treatments_on_treatment_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.text "description"
    t.text "necessity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

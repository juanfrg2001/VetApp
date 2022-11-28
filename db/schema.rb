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

ActiveRecord::Schema.define(version: 2022_11_27_231042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diaries", force: :cascade do |t|
    t.bigint "medical_id", null: false
    t.bigint "pet_id", null: false
    t.string "horario"
    t.string "fecha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medical_id"], name: "index_diaries_on_medical_id"
    t.index ["pet_id"], name: "index_diaries_on_pet_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "nombre"
    t.string "localidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_histories", force: :cascade do |t|
    t.bigint "diary_id", null: false
    t.string "motivo_consulta"
    t.string "fecha_consulta"
    t.string "cdiagnostico"
    t.string "tratamiento_seguir"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diary_id"], name: "index_medical_histories_on_diary_id"
  end

  create_table "medicals", force: :cascade do |t|
    t.bigint "speciality_id", null: false
    t.string "nombre"
    t.string "telefono"
    t.string "direccion_residencia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["speciality_id"], name: "index_medicals_on_speciality_id"
  end

  create_table "pets", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "responsible_id", null: false
    t.bigint "species_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_pets_on_location_id"
    t.index ["responsible_id"], name: "index_pets_on_responsible_id"
    t.index ["species_id"], name: "index_pets_on_species_id"
  end

  create_table "responsibles", force: :cascade do |t|
    t.string "nombre"
    t.string "cedula"
    t.string "telefono"
    t.string "direccion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_specialities_on_location_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "raza"
    t.string "genero"
    t.string "edad"
    t.string "esterilizado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "test2s", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "responsible_id", null: false
    t.bigint "species_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_test2s_on_location_id"
    t.index ["responsible_id"], name: "index_test2s_on_responsible_id"
    t.index ["species_id"], name: "index_test2s_on_species_id"
  end

  add_foreign_key "diaries", "pets"
  add_foreign_key "medical_histories", "diaries"
  add_foreign_key "medicals", "specialities"
  add_foreign_key "pets", "locations"
  add_foreign_key "pets", "responsibles"
  add_foreign_key "pets", "species"
  add_foreign_key "specialities", "locations"
  add_foreign_key "test2s", "locations"
  add_foreign_key "test2s", "responsibles"
  add_foreign_key "test2s", "species"
end

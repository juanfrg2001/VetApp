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

ActiveRecord::Schema.define(version: 2022_11_26_002041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diaries", force: :cascade do |t|
    t.bigint "medicals_id", null: false
    t.bigint "pacients_id", null: false
    t.string "horario"
    t.string "fecha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medicals_id"], name: "index_diaries_on_medicals_id"
    t.index ["pacients_id"], name: "index_diaries_on_pacients_id"
  end

  create_table "especialidads", force: :cascade do |t|
    t.bigint "sede_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sede_id"], name: "index_especialidads_on_sede_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "nombre"
    t.string "localidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_histories", force: :cascade do |t|
    t.bigint "diaries_id", null: false
    t.string "motivo_consulta"
    t.string "fecha_consulta"
    t.string "cdiagnostico"
    t.string "tratamiento_seguir"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diaries_id"], name: "index_medical_histories_on_diaries_id"
  end

  create_table "medicals", force: :cascade do |t|
    t.bigint "specialities_id", null: false
    t.string "nombre"
    t.string "telefono"
    t.string "direccion_residencia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialities_id"], name: "index_medicals_on_specialities_id"
  end

  create_table "pacients", force: :cascade do |t|
    t.bigint "locations_id", null: false
    t.bigint "responsibles_id", null: false
    t.bigint "species_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["locations_id"], name: "index_pacients_on_locations_id"
    t.index ["responsibles_id"], name: "index_pacients_on_responsibles_id"
    t.index ["species_id"], name: "index_pacients_on_species_id"
  end

  create_table "responsibles", force: :cascade do |t|
    t.string "nombre"
    t.string "cedula"
    t.string "telefono"
    t.string "direccion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sedes", force: :cascade do |t|
    t.string "nombre"
    t.string "localidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.bigint "locations_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["locations_id"], name: "index_specialities_on_locations_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "raza"
    t.string "genero"
    t.string "edad"
    t.string "esterilizado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "diaries", "medicals", column: "medicals_id"
  add_foreign_key "diaries", "pacients", column: "pacients_id"
  add_foreign_key "especialidads", "sedes"
  add_foreign_key "medical_histories", "diaries", column: "diaries_id"
  add_foreign_key "medicals", "specialities", column: "specialities_id"
  add_foreign_key "pacients", "locations", column: "locations_id"
  add_foreign_key "pacients", "responsibles", column: "responsibles_id"
  add_foreign_key "pacients", "species"
  add_foreign_key "specialities", "locations", column: "locations_id"
end

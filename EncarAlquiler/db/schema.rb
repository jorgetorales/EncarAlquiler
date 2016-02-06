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

ActiveRecord::Schema.define(version: 20160205212621) do

  create_table "habitaciones", force: :cascade do |t|
    t.integer  "tipo_id",     limit: 4
    t.integer  "numero",      limit: 4
    t.string   "descripcion", limit: 255
    t.string   "estado",      limit: 255
    t.integer  "precio",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "habitaciones", ["tipo_id"], name: "habitaciones_tipo_id_fk", using: :btree

  create_table "locatarios", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.integer  "ci",         limit: 4
    t.integer  "telefono",   limit: 4
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.integer  "reserva_id",  limit: 4
    t.integer  "montoapagar", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "pagos", ["reserva_id"], name: "pagos_reserva_id_fk", using: :btree

  create_table "reservas", force: :cascade do |t|
    t.integer  "locatario_id",  limit: 4
    t.string   "fecha_reserva", limit: 255
    t.string   "estado",        limit: 255
    t.integer  "monto",         limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "reservas", ["locatario_id"], name: "reservas_locatario_id_fk", using: :btree

  create_table "reservas_habitaciones", force: :cascade do |t|
    t.integer  "reserva_id",    limit: 4
    t.integer  "habitacion_id", limit: 4
    t.string   "fecha_inicio",  limit: 255
    t.string   "fecha_fin",     limit: 255
    t.integer  "precio",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "reservas_habitaciones", ["habitacion_id"], name: "reservas_habitaciones_habitacion_id_fk", using: :btree
  add_index "reservas_habitaciones", ["reserva_id"], name: "reservas_habitaciones_reserva_id_fk", using: :btree

  create_table "tipos", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree


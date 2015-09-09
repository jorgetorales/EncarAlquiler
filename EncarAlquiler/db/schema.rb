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

ActiveRecord::Schema.define(version: 20150901213014) do

  create_table "habitaciones", force: :cascade do |t|
    t.integer  "numero"
    t.integer  "tipo_id"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "precio"
  end

  create_table "locatarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "ci"
    t.integer  "telefono"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.integer  "locatario_id"
    t.integer  "habitacion_id"
    t.integer  "usuario_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "fecha_inicio"
    t.string   "fecha_fin"
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "usuario"
    t.string   "contrasena"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

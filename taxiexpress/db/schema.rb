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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20151130052014) do

  create_table "clientes", :force => true do |t|
    t.string   "dni"
    t.string   "password"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "edad"
    t.string   "movil"
    t.string   "direccion"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sectors", :force => true do |t|
    t.string   "distrito_origen"
    t.string   "calle_origen"
    t.string   "distrito_destino"
    t.string   "calle_destino"
    t.float    "costo_tarifa"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "servicios", :force => true do |t|
    t.time     "horaservicio"
    t.string   "referencia"
    t.integer  "sector_id"
    t.integer  "cliente_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "servicios", ["cliente_id"], :name => "index_servicios_on_cliente_id"
  add_index "servicios", ["sector_id"], :name => "index_servicios_on_sector_id"

  create_table "tarifas", :force => true do |t|
    t.float    "costo_tarifa"
    t.integer  "sector_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "tarifas", ["sector_id"], :name => "index_tarifas_on_sector_id"

end

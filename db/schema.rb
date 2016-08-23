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

ActiveRecord::Schema.define(version: 20160823204402) do

  create_table "constructions", force: :cascade do |t|
    t.text     "estado"
    t.integer  "npisos"
    t.integer  "sotanos"
    t.float    "años"
    t.string   "vetustez"
    t.string   "pisos"
    t.string   "estructura"
    t.string   "sismoresistente"
    t.string   "cubierta"
    t.string   "fachada"
    t.string   "tfachada"
    t.string   "reforzada"
    t.string   "daños"
    t.string   "material"
    t.string   "iluminar"
    t.string   "testructura"
    t.string   "ventilar"
    t.string   "planta"
    t.string   "altura"
    t.string   "habitacion"
    t.string   "ehabitacion"
    t.string   "shabitacion"
    t.string   "closet"
    t.string   "sala"
    t.string   "comedor"
    t.string   "pribanos"
    t.string   "socibanos"
    t.string   "serbanos"
    t.string   "cocina"
    t.string   "estudio"
    t.string   "balcon"
    t.string   "terraza"
    t.string   "patiointer"
    t.string   "jardin"
    t.string   "zonaropa"
    t.string   "zonaverde"
    t.string   "locales"
    t.string   "oficina"
    t.string   "bodega"
    t.text     "calidad"
    t.string   "tgaraje"
    t.string   "observacion"
    t.string   "privado"
    t.string   "exclusivo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "cobra"
    t.string   "econstruction"
    t.integer  "rural_id"
  end

  create_table "evaluates", force: :cascade do |t|
    t.string   "descripcion"
    t.string   "nombre"
    t.string   "unidad"
    t.string   "area"
    t.string   "unitario"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "value_id"
    t.integer  "rural_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "estrato"
    t.string   "evias"
    t.string   "blegal"
    t.string   "vpavimentadas"
    t.string   "toposector"
    t.string   "svias"
    t.string   "transporte"
    t.string   "condiciones"
    t.string   "andenes"
    t.string   "usector"
    t.string   "parques"
    t.string   "aire"
    t.string   "paradero"
    t.string   "basura"
    t.string   "alumbrado"
    t.string   "inseguridad"
    t.string   "zverdes"
    t.string   "ruido"
    t.string   "arborizacion"
    t.string   "saguas"
    t.string   "alamedas"
    t.string   "otro"
    t.string   "cicloruta"
    t.string   "pvalorizacion"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "alcantasector"
    t.string   "alcantapredio"
    t.string   "acueducsector"
    t.string   "acueducpredio"
    t.string   "gassector"
    t.string   "gaspredio"
    t.string   "telsector"
    t.string   "telpredio"
    t.string   "energiasector"
    t.string   "energiapredio"
    t.integer  "rural_id"
  end

  create_table "properties", force: :cascade do |t|
    t.text     "tinmueble"
    t.text     "uinmueble"
    t.text     "clainmueble"
    t.text     "tvivienda"
    t.string   "phorizontal"
    t.string   "conjunto"
    t.string   "nedificios"
    t.string   "upisos"
    t.string   "ubicacion"
    t.string   "tunidades"
    t.string   "coeficiente"
    t.string   "porteria"
    t.string   "juegos"
    t.string   "citofono"
    t.string   "cmultiple"
    t.string   "scomunal"
    t.string   "bicicletero"
    t.string   "beyectora"
    t.string   "shutbasuras"
    t.string   "piscina"
    t.string   "airecentral"
    t.string   "econstante"
    t.string   "tagua"
    t.string   "csquash"
    t.string   "chouse"
    t.string   "zverdes"
    t.string   "pelectrica"
    t.string   "gvisitantes"
    t.string   "gimnasio"
    t.string   "ascensor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "otro"
    t.string   "golfito"
    t.integer  "rural_id"
  end

  create_table "rurals", force: :cascade do |t|
    t.string   "document_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "s_surname"
    t.string   "cellphone"
    t.string   "email"
    t.text     "claimant_address"
    t.string   "claimant_department"
    t.string   "claimant_city"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "second_name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "cctype"
    t.integer  "user_id"
  end

  create_table "titulations", force: :cascade do |t|
    t.string   "depart"
    t.string   "municipio"
    t.string   "barrio"
    t.string   "conjunto"
    t.string   "sector"
    t.string   "claimant_address"
    t.string   "matrinmo"
    t.string   "numescritura"
    t.string   "departescritura"
    t.string   "sematrinmo"
    t.string   "numnotaria"
    t.string   "ciuescritura"
    t.string   "fecha"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "rural_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "values", force: :cascade do |t|
    t.string   "actualidad"
    t.string   "comportamiento"
    t.string   "tiempo"
    t.string   "valoruvr"
    t.string   "avaluouvr"
    t.string   "vasegurable"
    t.string   "vterreno"
    t.string   "iterreno"
    t.string   "vconstruccion"
    t.string   "iconstruccion"
    t.string   "garantia"
    t.string   "observacion"
    t.string   "danexo"
    t.string   "odireccion"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "rural_id"
  end

end

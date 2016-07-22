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

ActiveRecord::Schema.define(version: 20160722071913) do

  create_table "avaluo_rurals", force: :cascade do |t|
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
  end

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
    t.integer  "avaluo_rural_id"
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
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "avaluo_rural_id"
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
    t.integer  "avaluo_rural_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "otro"
    t.string   "golfito"
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
    t.integer  "avaluo_rural_id"
    t.float    "latitude"
    t.float    "longitude"
  end

end

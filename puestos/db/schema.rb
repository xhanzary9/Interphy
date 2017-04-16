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

ActiveRecord::Schema.define(version: 20170416003605) do

  create_table "Administrador", primary_key: "idAdmin", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "correo",      limit: 70, null: false
    t.string "contrasenia", limit: 60, null: false
    t.string "username",    limit: 60, null: false
  end

  create_table "Califica", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "idUsuario",              null: false
    t.integer "idPuesto",               null: false
    t.string  "comentario", limit: 300, null: false
    t.integer "estrellas",              null: false
    t.index ["idPuesto"], name: "fk_puesto", unique: true, using: :btree
    t.index ["idUsuario"], name: "fk_usuario", unique: true, using: :btree
  end

  create_table "Comida", primary_key: "idComida", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "tipo",     limit: 20, null: false
    t.float   "costo",    limit: 24, null: false
    t.integer "idPuesto",            null: false
    t.index ["idPuesto"], name: "fk_idPuestoComida", unique: true, using: :btree
  end

  create_table "Informacion", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "idPuesto",                 null: false
    t.date    "horario",                  null: false
    t.string  "info_general", limit: 300, null: false
    t.string  "coordenadas",  limit: 17,  null: false
    t.index ["idPuesto"], name: "fk_idPuesto", unique: true, using: :btree
  end

  create_table "Puesto", primary_key: "idPuesto", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "nombre",        limit: 60,  null: false
    t.integer "numPuestoUNAM"
    t.string  "imagen",        limit: 100, null: false
  end

  create_table "Usuario", primary_key: "idUsuario", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "correo",      limit: 70, null: false
    t.string "contrasenia", limit: 60, null: false
    t.string "username",    limit: 60, null: false
  end

  create_table "calificas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "correo"
    t.string   "contrasenia"
    t.string   "username"
  end

  add_foreign_key "Califica", "Puesto", column: "idPuesto", primary_key: "idPuesto", name: "fk_idPuesto", on_update: :cascade
  add_foreign_key "Califica", "Usuario", column: "idUsuario", primary_key: "idUsuario", name: "fk_idUsuario", on_update: :cascade
  add_foreign_key "Comida", "Puesto", column: "idPuesto", primary_key: "idPuesto", name: "fk_idPuestoComida", on_update: :cascade
  add_foreign_key "Informacion", "Puesto", column: "idPuesto", primary_key: "idPuesto", name: "fk_idPuestoinfo", on_update: :cascade
end

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

ActiveRecord::Schema.define(version: 20141126132053) do

  create_table "incident_types", force: true do |t|
    t.string   "description", limit: 30, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incidents", force: true do |t|
    t.integer  "user_id"
    t.integer  "incident_type_id"
    t.string   "description",      limit: 1000, default: "", null: false
    t.integer  "view_count",                    default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "incidents", ["incident_type_id"], name: "index_incidents_on_incident_type_id"
  add_index "incidents", ["user_id"], name: "index_incidents_on_user_id"

  create_table "supports", force: true do |t|
    t.integer  "incident_id", null: false
    t.integer  "user_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "supports", ["incident_id"], name: "index_supports_on_incident_id"
  add_index "supports", ["user_id"], name: "index_supports_on_user_id"

  create_table "users", force: true do |t|
    t.string   "username",              default: "",  null: false
    t.string   "first_name", limit: 30, default: "",  null: false
    t.string   "last_name",  limit: 30, default: "",  null: false
    t.date     "birth",                               null: false
    t.string   "cpf",                   default: "",  null: false
    t.string   "email",                 default: "",  null: false
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender",     limit: 1,  default: "O", null: false
  end

end

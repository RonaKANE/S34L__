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

ActiveRecord::Schema.define(version: 20161220121800) do

  create_table "hosts", force: :cascade do |t|
    t.string   "hostname",                limit: 45
    t.string   "serial_number",           limit: 45
    t.string   "reference_orange",        limit: 45
    t.string   "location",                limit: 45
    t.string   "project_name",            limit: 45
    t.string   "brand",                   limit: 45
    t.string   "model",                   limit: 45
    t.string   "electricity_consumption", limit: 45
    t.text     "certificate"
    t.boolean  "state"
    t.integer  "user_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["user_id"], name: "index_hosts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_id",          limit: 45
    t.string   "first_name",       limit: 45
    t.string   "last_name",        limit: 45
    t.string   "service",          limit: 45
    t.string   "user_tel",         limit: 45
    t.string   "user_mail",        limit: 45
    t.string   "office",           limit: 45
    t.text     "certificate_name"
    t.text     "password"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end

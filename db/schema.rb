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

ActiveRecord::Schema.define(version: 2019_12_13_174931) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.boolean "status"
    t.bigint "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.index ["partner_id"], name: "index_companies_on_partner_id"
  end

  create_table "mobile_forms", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "json_config", default: {}, null: false
    t.index ["company_id"], name: "index_mobile_forms_on_company_id"
  end

  create_table "mobile_forms_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "mobile_form_id", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "fullname"
    t.string "email"
    t.string "password_digest"
    t.bigint "role_id"
    t.bigint "partner_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status", default: true, null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["partner_id"], name: "index_users_on_partner_id"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "companies", "partners"
  add_foreign_key "mobile_forms", "companies"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "partners"
  add_foreign_key "users", "roles"
end

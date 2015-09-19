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

ActiveRecord::Schema.define(version: 20150911071137) do

  create_table "adrrs", force: :cascade do |t|
    t.string   "adr2_title"
    t.string   "adr2_zip"
    t.string   "adr2_ad"
    t.string   "adr2_adr"
    t.text     "adr2_content"
    t.string   "adr2_email"
    t.string   "my2_image_f"
    t.string   "my2_image"
    t.string   "my2_image2"
    t.string   "my2_image3"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "adrs", force: :cascade do |t|
    t.string   "adr_title"
    t.string   "adr_zip"
    t.string   "adr_ad"
    t.string   "adr_adr"
    t.text     "adr_content"
    t.string   "adr_email"
    t.date     "adr_before"
    t.date     "adr_after"
    t.string   "y_money"
    t.string   "m_money"
    t.string   "my_image"
    t.string   "my_image2"
    t.string   "my_image3"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "number",                 default: "", null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

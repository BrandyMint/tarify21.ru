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

ActiveRecord::Schema.define(version: 20140324132645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "accept_orders",          default: false, null: false
    t.string   "phone"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "banks", force: true do |t|
    t.string   "title",                             null: false
    t.boolean  "active",             default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "notification_email"
    t.string   "notification_phone"
    t.integer  "preview_id"
  end

  create_table "images", force: true do |t|
    t.string   "file",          null: false
    t.text     "description"
    t.string   "resource_type", null: false
    t.integer  "resource_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "tariffe_id"
    t.string   "phone"
    t.string   "name"
    t.string   "email"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["tariffe_id"], name: "index_orders_on_tariffe_id", using: :btree

  create_table "tariffes", force: true do |t|
    t.boolean  "active",       default: true, null: false
    t.integer  "bank_id"
    t.integer  "position",     default: 0,    null: false
    t.string   "title",                       null: false
    t.float    "month_fee"
    t.float    "invoice_fee"
    t.float    "cashing_fee"
    t.text     "summary"
    t.string   "pdf"
    t.text     "description"
    t.string   "invoice_tips"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tariffes", ["bank_id"], name: "index_tariffes_on_bank_id", using: :btree

end

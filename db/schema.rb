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

ActiveRecord::Schema.define(version: 20140112063828) do

  create_table "attachments", force: true do |t|
    t.string   "name"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpanel_ads", force: true do |t|
    t.string   "position"
    t.integer  "height"
    t.integer  "width"
    t.text     "url"
    t.text     "description"
    t.boolean  "is_displayed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpanel_attachments", force: true do |t|
    t.string   "name"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpanel_nodes", force: true do |t|
    t.string   "name"
    t.integer  "sort"
    t.string   "summary"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpanel_sections", force: true do |t|
    t.string   "name"
    t.integer  "sort"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpanel_settings", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpanel_things", force: true do |t|
    t.string   "title"
    t.decimal  "price",          precision: 10, scale: 0
    t.decimal  "coupon_price",   precision: 10, scale: 0
    t.text     "master_pic_url"
    t.text     "sub_pic_url"
    t.text     "click_url"
    t.integer  "node_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "malls", force: true do |t|
    t.string   "name"
    t.text     "url"
    t.text     "logo_url"
    t.string   "mall_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nodes", force: true do |t|
    t.string   "name"
    t.integer  "sort"
    t.string   "summary"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.string   "name"
    t.integer  "sort"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.text     "name"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "things", force: true do |t|
    t.string   "title"
    t.decimal  "price",          precision: 10, scale: 0
    t.decimal  "coupon_price",   precision: 10, scale: 0
    t.integer  "node_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sub_title"
    t.text     "summary"
    t.text     "content"
    t.text     "master_pic_url"
    t.text     "sub_pic_url"
    t.text     "click_url"
    t.integer  "mall_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

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

ActiveRecord::Schema.define(version: 20140801230307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: true do |t|
    t.string   "title"
    t.text     "about_us"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", force: true do |t|
    t.string   "logo"
    t.string   "slider_image_one"
    t.string   "slider_title_one"
    t.text     "slider_text_one"
    t.string   "slider_image_two"
    t.string   "slider_title_two"
    t.text     "slider_text_two"
    t.string   "slider_image_three"
    t.string   "slider_title_three"
    t.text     "slider_text_three"
    t.text     "promocional"
    t.string   "about"
    t.string   "address"
    t.integer  "telephone"
    t.integer  "fax"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maps", force: true do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "city"
    t.string   "country"
    t.string   "street"
    t.integer  "altitude"
    t.integer  "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "image"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "icon"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_lines", force: true do |t|
    t.text     "content"
    t.string   "title"
    t.date     "date"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end

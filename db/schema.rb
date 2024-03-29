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

ActiveRecord::Schema.define(version: 20150731181456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string  "content"
    t.integer "user_id"
    t.integer "pin_id"
  end

  add_index "comments", ["pin_id"], name: "index_comments_on_pin_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "pinboards", force: :cascade do |t|
    t.string  "title"
    t.integer "user_id"
  end

  add_index "pinboards", ["user_id"], name: "index_pinboards_on_user_id", using: :btree

  create_table "pins", force: :cascade do |t|
    t.string  "title"
    t.string  "picture_url"
    t.string  "content"
    t.integer "pinboard_id"
  end

  add_index "pins", ["pinboard_id"], name: "index_pins_on_pinboard_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
  end

  add_foreign_key "comments", "pins"
  add_foreign_key "comments", "users"
  add_foreign_key "pinboards", "users"
  add_foreign_key "pins", "pinboards"
end

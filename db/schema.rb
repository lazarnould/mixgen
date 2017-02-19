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

ActiveRecord::Schema.define(version: 20170219184943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "children", ["user_id"], name: "index_children_on_user_id", using: :btree

  create_table "homes", force: :cascade do |t|
    t.string   "name"
    t.string   "street_name"
    t.integer  "number"
    t.integer  "zipcode"
    t.string   "city"
    t.string   "country"
    t.integer  "capacity"
    t.integer  "price"
    t.integer  "phone_number"
    t.string   "phone_prefix"
    t.string   "email"
    t.text     "description"
    t.string   "description_sentence"
    t.integer  "babysitters"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "child_id"
    t.integer  "home_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["child_id"], name: "index_reviews_on_child_id", using: :btree
  add_index "reviews", ["home_id"], name: "index_reviews_on_home_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone_number"
    t.string   "phone_prefix"
    t.integer  "home_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "users", ["home_id"], name: "index_users_on_home_id", using: :btree

  add_foreign_key "children", "users"
  add_foreign_key "reviews", "children"
  add_foreign_key "reviews", "homes"
  add_foreign_key "reviews", "users"
  add_foreign_key "users", "homes"
end

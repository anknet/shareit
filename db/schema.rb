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

ActiveRecord::Schema.define(version: 20131110115929) do

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "data",                 limit: 500
    t.string   "tag"
    t.string   "img_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "p_thumb_file_name"
    t.string   "p_thumb_content_type"
    t.integer  "p_thumb_file_size"
    t.datetime "p_thumb_updated_at"
    t.integer  "user_data_id"
  end

  create_table "relationships", id: false, force: true do |t|
    t.integer  "user_data_id"
    t.integer  "follower_id"
    t.integer  "following_id"
    t.integer  "posts_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_data", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "img_link"
  end

  add_index "user_data", ["email"], name: "index_user_data_on_email", unique: true
  add_index "user_data", ["reset_password_token"], name: "index_user_data_on_reset_password_token", unique: true

end
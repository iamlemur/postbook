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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130309195437) do

  create_table "annotations", :force => true do |t|
    t.integer  "post_id"
    t.integer  "author_id"
    t.integer  "paragraph"
    t.integer  "start_word"
    t.integer  "end_word"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "authors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "description"
    t.integer  "location_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "authors", ["email"], :name => "index_authors_on_email", :unique => true
  add_index "authors", ["reset_password_token"], :name => "index_authors_on_reset_password_token", :unique => true

  create_table "bookmarks", :force => true do |t|
    t.integer  "post_id"
    t.integer  "paragraph"
    t.integer  "author_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.string   "cover"
    t.boolean  "discussion"
    t.integer  "draft_status_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "characters", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "full_name"
    t.text     "description"
    t.integer  "post_id"
    t.boolean  "discussion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "copyrights", :force => true do |t|
    t.integer  "license_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "draft_statuses", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "favorites", :force => true do |t|
    t.integer  "author_id"
    t.integer  "favoritable_id"
    t.string   "favoritable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "favorites", ["favoritable_id", "favoritable_type"], :name => "index_favorites_on_favoritable_id_and_favoritable_type"

  create_table "licenses", :force => true do |t|
    t.string   "name"
    t.boolean  "valid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "body"
    t.boolean  "discussion"
    t.integer  "draft_status_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "author_id"
  end

  add_index "posts", ["author_id"], :name => "index_posts_on_author_id"

  create_table "purchases", :force => true do |t|
    t.integer  "license_id"
    t.integer  "author_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "author_id"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "views", :force => true do |t|
    t.integer  "author_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

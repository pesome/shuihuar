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

ActiveRecord::Schema.define(:version => 20121110101805) do

  create_table "apply_groups", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "owner_id"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "descripion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "follow_groups", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "follow_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "followed_user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "group_categories", :force => true do |t|
    t.integer "group_id"
    t.integer "category_id"
  end

  add_index "group_categories", ["category_id", "group_id"], :name => "index_group_categories_on_category_id_and_group_id"
  add_index "group_categories", ["group_id", "category_id"], :name => "index_group_categories_on_group_id_and_category_id"

  create_table "group_reviews", :force => true do |t|
    t.integer  "group_id_id"
    t.text     "context"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "label"
    t.string   "image_url"
    t.integer  "owner"
    t.boolean  "is_public"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "groups_users", :force => true do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  add_index "groups_users", ["group_id", "user_id"], :name => "index_groups_users_on_group_id_and_user_id"
  add_index "groups_users", ["user_id", "group_id"], :name => "index_groups_users_on_user_id_and_group_id"

  create_table "task_reviews", :force => true do |t|
    t.integer  "task_id_id"
    t.text     "context"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.datetime "expect_begin_time"
    t.datetime "expect_end_time"
    t.datetime "begin_time"
    t.datetime "end_time"
    t.integer  "owner"
    t.text     "description"
    t.integer  "status"
    t.integer  "assign_user"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "user_groups", :force => true do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  add_index "user_groups", ["group_id", "user_id"], :name => "index_user_groups_on_group_id_and_user_id"
  add_index "user_groups", ["user_id", "group_id"], :name => "index_user_groups_on_user_id_and_group_id"

  create_table "user_reviews", :force => true do |t|
    t.integer  "user_id_id"
    t.text     "context"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "QQ"
    t.string   "weibo"
    t.string   "phone"
    t.integer  "gender"
    t.string   "company"
    t.string   "label"
    t.string   "city"
    t.string   "destrict"
    t.string   "icon_url"
    t.string   "position"
    t.text     "description"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

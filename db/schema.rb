# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100113184850) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "presentation_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conferences", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presentations", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_time"
    t.string   "location"
    t.string   "level"
    t.string   "technology"
    t.integer  "category_id"
    t.string   "reference_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "positive_ratings", :default => 0
    t.integer  "negative_ratings", :default => 0
  end

  create_table "presentations_presenters", :id => false, :force => true do |t|
    t.integer  "presentation_id"
    t.integer  "presenter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presenters", :force => true do |t|
    t.string   "name"
    t.string   "reference_data"
    t.string   "bio"
    t.string   "contact_info"
    t.string   "blog_url"
    t.string   "twitter_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "presentation_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "thumbs_up",       :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "login",                              :null => false
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
  end

end

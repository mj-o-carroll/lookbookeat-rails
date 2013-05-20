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

ActiveRecord::Schema.define(:version => 20130512190507) do

  create_table "advertisments", :force => true do |t|
    t.string   "ad_duration"
    t.date     "ad_start_date"
    t.decimal  "cost"
    t.date     "date_payment"
    t.string   "ad_content"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "bookings", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.string   "message"
    t.string   "restaurant_email"
    t.string   "user_u_email"
    t.string   "restaurant_name"
    t.string   "user_name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "rating"
    t.text     "name"
    t.text     "content"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
    t.integer  "user_id"
  end

  create_table "maps", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "address"
  end

  create_table "menus", :force => true do |t|
    t.string   "title"
    t.string   "menu_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "restaurant_id"
    t.string   "starter_1"
    t.string   "starter_2"
    t.string   "starter_3"
    t.string   "main_1"
    t.string   "main_2"
    t.string   "main_3"
    t.string   "dessert_1"
    t.string   "dessert_2"
    t.string   "dessert_3"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_no"
    t.string   "email"
    t.string   "picture"
    t.string   "description"
    t.string   "location"
    t.string   "food_type"
    t.string   "price_range"
    t.integer  "rating"
    t.integer  "veg_friendly"
    t.integer  "vegan_friendly"
    t.integer  "coeliac_friendly"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "password"
    t.string   "password_digest"
    t.string   "username"
    t.string   "remember_token"
    t.boolean  "gmaps"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "restaurants", ["email"], :name => "index_restaurants_on_email", :unique => true
  add_index "restaurants", ["remember_token"], :name => "index_restaurants_on_remember_token"

  create_table "special_offers", :force => true do |t|
    t.string   "so_title"
    t.date     "so_start"
    t.date     "so_finish"
    t.text     "so_description"
    t.text     "so_content"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "u_name"
    t.string   "u_email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "username"
    t.string   "u_address"
    t.string   "u_phone"
    t.integer  "mailing_list"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  add_index "users", ["u_email"], :name => "index_users_on_email", :unique => true

end

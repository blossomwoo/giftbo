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

ActiveRecord::Schema.define(:version => 20130622184357) do

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.string   "hex_code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "girltypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surveys", :force => true do |t|
    t.string   "name"
    t.string   "zip"
    t.date     "dob"
    t.string   "flowers"
    t.date     "anniversary_date"
    t.string   "dislikes"
    t.decimal  "budget"
    t.string   "ship_address"
    t.string   "ship_zip"
    t.string   "ship_city"
    t.string   "phone_num"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "surveys_colors", :id => false, :force => true do |t|
    t.integer "survey_id"
    t.integer "color_id"
  end

  create_table "surveys_girltypes", :id => false, :force => true do |t|
    t.integer "survey_id"
    t.integer "girltype_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

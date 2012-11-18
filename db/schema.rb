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

ActiveRecord::Schema.define(:version => 20121118203254) do

  create_table "batches", :force => true do |t|
    t.integer  "recipe_id"
    t.float    "abv"
    t.text     "notes"
    t.integer  "rating"
    t.boolean  "starred"
    t.float    "starting_gravity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brewers", :force => true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brewers", ["email"], :name => "index_brewers_on_email", :unique => true
  add_index "brewers", ["reset_password_token"], :name => "index_brewers_on_reset_password_token", :unique => true

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.string   "ingredient_type"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients_steps", :force => true do |t|
    t.integer "step_id"
    t.integer "ingredient_id"
  end

  create_table "log_entries", :force => true do |t|
    t.integer  "batch_id"
    t.integer  "step"
    t.datetime "date"
    t.float    "gravity"
    t.float    "temperature"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.string   "style"
    t.text     "description"
    t.float    "abv"
    t.float    "batch_size"
    t.text     "notes"
    t.string   "beer_type"
    t.integer  "brewer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", :force => true do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.string   "step_type"
    t.float    "amount"
    t.time     "duration"
    t.text     "notes"
    t.float    "temperature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

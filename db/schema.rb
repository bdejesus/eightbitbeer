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

ActiveRecord::Schema.define(:version => 20121031054232) do

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

  create_table "ingredients", :force => true do |t|
    t.integer  "step_id"
    t.string   "type"
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_entries", :force => true do |t|
    t.integer  "batch_id"
    t.string   "step"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", :force => true do |t|
    t.integer  "recipe_id"
    t.text     "name"
    t.float    "amount"
    t.time     "time"
    t.text     "notes"
    t.float    "temperature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20141009233928) do

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "user_id"
    t.boolean  "admin"
=======
ActiveRecord::Schema.define(version: 20141009234312) do

  create_table "books", force: true do |t|
    t.string   "isbn"
    t.string   "title"
    t.integer  "author_id"
    t.string   "genre"
    t.text     "abstract"
    t.integer  "pages"
    t.string   "image_cover_url"
    t.date     "published_on"
    t.integer  "total_in_library"
>>>>>>> 4dee6f57a1d800dda1a9f64bb07d4c0f499ce8db
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

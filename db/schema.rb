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
ActiveRecord::Schema.define(version: 20160520234717) do
=======
ActiveRecord::Schema.define(version: 20160521181610) do
>>>>>>> origin/stu

  create_table "products", force: :cascade do |t|
    t.string  "name"
    t.integer "price"
    t.integer "frequency"
    t.string  "description"
    t.string  "content"
    t.string  "url"
    t.integer "user_id"
    t.string  "video_url"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "review"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "province"
    t.string   "paypal_email"
    t.string   "password"
    t.integer  "subscription_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

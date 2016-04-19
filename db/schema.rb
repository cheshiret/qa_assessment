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

ActiveRecord::Schema.define(version: 20160419100333) do

  create_table "cards", force: true do |t|
    t.string   "cardid"
    t.string   "userid",     null: false
    t.integer  "status"
    t.string   "cardnum"
    t.string   "pw"
    t.decimal  "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dvds", force: true do |t|
    t.string   "dvdid"
    t.string   "dvdname"
    t.integer  "status"
    t.integer  "dvdtype"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", force: true do |t|
    t.string   "memid"
    t.string   "memname"
    t.integer  "status"
    t.integer  "validmonths"
    t.integer  "cost"
    t.integer  "freetrans"
    t.decimal  "costadd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "ordid"
    t.string   "ordnum"
    t.string   "userid",     null: false
    t.integer  "status"
    t.integer  "ordertype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.string   "transid"
    t.string   "userid",     null: false
    t.string   "rcptnum"
    t.string   "ordnum",     null: false
    t.integer  "status"
    t.integer  "transtype"
    t.decimal  "amount"
    t.datetime "transdate"
    t.string   "paymethod"
    t.string   "cardid",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "userid"
    t.string   "username"
    t.integer  "status"
    t.string   "mem_id"
    t.datetime "reg_date"
    t.datetime "expire_date"
    t.datetime "create_date"
    t.string   "update_update"
    t.string   "datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20160606205720) do

  create_table "lookup_esis", force: :cascade do |t|
    t.string   "esi_code"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lookup_oil_chars", force: :cascade do |t|
    t.string   "char_code"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lookup_pit_chars", force: :cascade do |t|
    t.string   "char_code"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lookup_substrs", force: :cascade do |t|
    t.string   "substr_code"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lookup_tb_chars", force: :cascade do |t|
    t.string   "char_code"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lookup_thicks", force: :cascade do |t|
    t.string   "thick_code"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lookup_tidals", force: :cascade do |t|
    t.string   "tidal_code"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: :cascade do |t|
    t.string   "person_id"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "org"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pits", force: :cascade do |t|
    t.string   "pit_id"
    t.string   "pit_name"
    t.string   "survey_id"
    t.string   "tidal_zone"
    t.integer  "p_depth"
    t.string   "p_oil_char"
    t.integer  "p_oil_bot"
    t.integer  "p_oil_top"
    t.float    "p_oil_dist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "segments", force: :cascade do |t|
    t.string   "segment_id"
    t.string   "esi_prim"
    t.string   "esi_sec"
    t.boolean  "back_cliff"
    t.boolean  "back_low"
    t.boolean  "back_beach"
    t.boolean  "back_dune"
    t.boolean  "back_wetl"
    t.boolean  "back_lag"
    t.boolean  "back_delt"
    t.boolean  "back_chan"
    t.boolean  "back_man"
    t.boolean  "acc_along"
    t.boolean  "acc_back"
    t.boolean  "stage_back"
    t.text     "acc_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "survey_id"
    t.string   "segment_id"
    t.string   "seg_list"
    t.date     "surv_date"
    t.integer  "surv_dint"
    t.datetime "start_time"
    t.datetime "stop_time"
    t.string   "tide_hgt"
    t.string   "surv_type"
    t.string   "surv_per1"
    t.string   "surv_per2"
    t.string   "surv_per3"
    t.string   "surv_per4"
    t.string   "surv_per5"
    t.string   "surv_per6"
    t.text     "surv_comm"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "zones", force: :cascade do |t|
    t.string   "zone_id"
    t.string   "zone_name"
    t.string   "survey_id"
    t.string   "tidal_zone"
    t.float    "width"
    t.float    "oil_dist"
    t.string   "oil_thick"
    t.string   "oil_char"
    t.string   "substr"
    t.float    "tb_cnt"
    t.float    "tb_area"
    t.string   "tb_arunit"
    t.float    "tb_mavsize"
    t.string   "tb_"
    t.float    "lgsize"
    t.string   "tb_type"
    t.float    "p_canopy"
    t.float    "p_oilbot"
    t.float    "p_oiltop"
    t.string   "esi"
    t.string   "oil_cat"
    t.string   "source"
    t.text     "zone_comm"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

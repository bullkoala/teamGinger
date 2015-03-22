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

ActiveRecord::Schema.define(version: 20150321180403) do

  create_table "act", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.integer "goldCost",    limit: 1
    t.string  "keywords",    limit: 75
    t.string  "description", limit: 500
    t.integer "focus",       limit: 1
  end

  add_index "act", ["typeID"], name: "typeID", using: :btree

  create_table "attachments", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.integer "strength",    limit: 1,   null: false
    t.integer "chi",         limit: 1,   null: false
    t.integer "goldCost",    limit: 1
    t.string  "keywords",    limit: 75
    t.string  "description", limit: 400
    t.integer "focus",       limit: 1
  end

  add_index "attachments", ["typeID"], name: "typeID", using: :btree

  create_table "event", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.string  "description", limit: 500
  end

  add_index "event", ["typeID"], name: "typeID", using: :btree

  create_table "follower", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",           limit: 1,   null: false
    t.integer "strength",         limit: 1
    t.integer "chi",              limit: 1
    t.integer "personalHonor",    limit: 1
    t.integer "goldCost",         limit: 1,   null: false
    t.integer "honorRequirement", limit: 1
    t.string  "keywords",         limit: 75
    t.string  "description",      limit: 500
    t.integer "focus",            limit: 1
  end

  add_index "follower", ["typeID"], name: "typeID", using: :btree

  create_table "holding", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",          limit: 1,   null: false
    t.integer "goldCost",        limit: 1
    t.integer "goldProduction",  limit: 1
    t.integer "honorProduction", limit: 1
    t.string  "keywords",        limit: 75
    t.string  "description",     limit: 500
  end

  add_index "holding", ["typeID"], name: "typeID", using: :btree

  create_table "monk_shugenja_attachments", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.integer "goldCost",    limit: 1
    t.string  "keywords",    limit: 75
    t.string  "description", limit: 500
    t.integer "focus",       limit: 1
  end

  add_index "monk_shugenja_attachments", ["typeID"], name: "typeID", using: :btree

  create_table "personality", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",                 limit: 1,   null: false
    t.integer "strength",               limit: 1
    t.integer "chi",                    limit: 1
    t.integer "goldCost",               limit: 1
    t.integer "familyHonorRequirement", limit: 1
    t.integer "personalHonor",          limit: 1
    t.string  "keywords",               limit: 75
    t.string  "description",            limit: 500
    t.string  "clan",                   limit: 15,  null: false
  end

  add_index "personality", ["typeID"], name: "typeID", using: :btree

  create_table "region", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.string  "keywords",    limit: 75
    t.string  "description", limit: 500
  end

  add_index "region", ["typeID"], name: "typeID", using: :btree

  create_table "ring", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.string  "keywords",    limit: 75
    t.string  "description", limit: 500
    t.integer "focus",       limit: 1
  end

  add_index "ring", ["typeID"], name: "typeID", using: :btree

  create_table "sensei", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",           limit: 1,   null: false
    t.integer "provinceStrength", limit: 1
    t.integer "goldProduction",   limit: 1
    t.integer "familyHonor",      limit: 1
    t.string  "keywords",         limit: 75
    t.string  "description",      limit: 500
  end

  add_index "sensei", ["typeID"], name: "typeID", using: :btree

  create_table "stronghold", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",           limit: 1,   null: false
    t.integer "provinceStrength", limit: 1
    t.integer "familyHonor",      limit: 1,   null: false
    t.integer "goldProduction",   limit: 1
    t.string  "keywords",         limit: 75
    t.string  "description",      limit: 500
    t.string  "clan",             limit: 15,  null: false
  end

  add_index "stronghold", ["typeID"], name: "typeID", using: :btree

  create_table "types", primary_key: "typeID", force: :cascade do |t|
    t.string "typeName", limit: 7, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "winds", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.string  "keywords",    limit: 75
    t.string  "description", limit: 500
  end

  add_index "winds", ["typeID"], name: "typeID", using: :btree

  add_foreign_key "act", "types", column: "typeID", primary_key: "typeID", name: "act_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "attachments", "types", column: "typeID", primary_key: "typeID", name: "attachments_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "event", "types", column: "typeID", primary_key: "typeID", name: "event_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "follower", "types", column: "typeID", primary_key: "typeID", name: "follower_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "holding", "types", column: "typeID", primary_key: "typeID", name: "holding_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "monk_shugenja_attachments", "types", column: "typeID", primary_key: "typeID", name: "monk_shugenja_attachments_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "personality", "types", column: "typeID", primary_key: "typeID", name: "personality_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "region", "types", column: "typeID", primary_key: "typeID", name: "region_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "ring", "types", column: "typeID", primary_key: "typeID", name: "ring_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "sensei", "types", column: "typeID", primary_key: "typeID", name: "sensei_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "stronghold", "types", column: "typeID", primary_key: "typeID", name: "stronghold_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "winds", "types", column: "typeID", primary_key: "typeID", name: "winds_ibfk_1", on_update: :cascade, on_delete: :cascade
end
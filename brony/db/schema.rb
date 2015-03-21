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

ActiveRecord::Schema.define(version: 0) do

  create_table "Attachments", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.integer "strength",    limit: 1,   null: false
    t.integer "chi",         limit: 1,   null: false
    t.integer "goldCost",    limit: 1
    t.string  "keywords",    limit: 30
    t.string  "description", limit: 100
    t.integer "focus",       limit: 1
  end

  add_index "Attachments", ["typeID"], name: "typeID", using: :btree

  create_table "Event", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.string  "description", limit: 100
  end

  add_index "Event", ["typeID"], name: "typeID", using: :btree

  create_table "Follower", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",           limit: 1,   null: false
    t.integer "strength",         limit: 1
    t.integer "chi",              limit: 1
    t.integer "personalHonor",    limit: 1
    t.integer "goldCost",         limit: 1,   null: false
    t.integer "honorRequirement", limit: 1
    t.string  "keywords",         limit: 30
    t.string  "description",      limit: 100
    t.integer "focus",            limit: 1
  end

  add_index "Follower", ["typeID"], name: "typeID", using: :btree

  create_table "Holding", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",          limit: 1,   null: false
    t.integer "goldCost",        limit: 1
    t.integer "goldProduction",  limit: 1
    t.integer "honorProduction", limit: 1
    t.string  "keywords",        limit: 30
    t.string  "description",     limit: 100
  end

  add_index "Holding", ["typeID"], name: "typeID", using: :btree

  create_table "MonkShugenjaAttachments", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.integer "goldCost",    limit: 1
    t.string  "keywords",    limit: 30
    t.string  "description", limit: 100
    t.integer "focus",       limit: 1
  end

  add_index "MonkShugenjaAttachments", ["typeID"], name: "typeID", using: :btree

  create_table "Personality", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",                 limit: 1,   null: false
    t.integer "strength",               limit: 1
    t.integer "chi",                    limit: 1
    t.integer "goldCost",               limit: 1
    t.integer "familyHonorRequirement", limit: 1
    t.integer "personalHonor",          limit: 1
    t.string  "keywords",               limit: 30
    t.string  "description",            limit: 100
    t.string  "clan",                   limit: 15,  null: false
  end

  add_index "Personality", ["typeID"], name: "typeID", using: :btree

  create_table "Ring", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.string  "keywords",    limit: 30
    t.string  "description", limit: 100
    t.integer "focus",       limit: 1
  end

  add_index "Ring", ["typeID"], name: "typeID", using: :btree

  create_table "Sensei", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",           limit: 1,   null: false
    t.integer "provinceStrength", limit: 1
    t.integer "goldProduction",   limit: 1
    t.integer "familyHonor",      limit: 1
    t.string  "keywords",         limit: 30
    t.string  "description",      limit: 100
  end

  add_index "Sensei", ["typeID"], name: "typeID", using: :btree

  create_table "Strategy", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.integer "goldCost",    limit: 1
    t.string  "keywords",    limit: 30
    t.string  "description", limit: 100
    t.integer "focus",       limit: 1
  end

  add_index "Strategy", ["typeID"], name: "typeID", using: :btree

  create_table "Stronghold", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",           limit: 1,   null: false
    t.integer "provinceStrength", limit: 1
    t.integer "familyHonor",      limit: 1,   null: false
    t.integer "goldProduction",   limit: 1
    t.string  "keywords",         limit: 30
    t.string  "description",      limit: 100
    t.string  "clan",             limit: 15,  null: false
  end

  add_index "Stronghold", ["typeID"], name: "typeID", using: :btree

  create_table "Terrain", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.string  "keywords",    limit: 30
    t.string  "description", limit: 100
  end

  add_index "Terrain", ["typeID"], name: "typeID", using: :btree

  create_table "Types", primary_key: "typeID", force: :cascade do |t|
    t.string "typeName", limit: 7, null: false
  end

  create_table "Winds", primary_key: "title", force: :cascade do |t|
    t.integer "typeID",      limit: 1,   null: false
    t.string  "keywords",    limit: 30
    t.string  "description", limit: 100
  end

  add_index "Winds", ["typeID"], name: "typeID", using: :btree

  add_foreign_key "Attachments", "Types", column: "typeID", primary_key: "typeID", name: "Attachments_ibfk_1"
  add_foreign_key "Event", "Types", column: "typeID", primary_key: "typeID", name: "Event_ibfk_1"
  add_foreign_key "Follower", "Types", column: "typeID", primary_key: "typeID", name: "Follower_ibfk_1"
  add_foreign_key "Holding", "Types", column: "typeID", primary_key: "typeID", name: "Holding_ibfk_1"
  add_foreign_key "MonkShugenjaAttachments", "Types", column: "typeID", primary_key: "typeID", name: "MonkShugenjaAttachments_ibfk_1"
  add_foreign_key "Personality", "Types", column: "typeID", primary_key: "typeID", name: "Personality_ibfk_1"
  add_foreign_key "Ring", "Types", column: "typeID", primary_key: "typeID", name: "Ring_ibfk_1"
  add_foreign_key "Sensei", "Types", column: "typeID", primary_key: "typeID", name: "Sensei_ibfk_1"
  add_foreign_key "Strategy", "Types", column: "typeID", primary_key: "typeID", name: "Strategy_ibfk_1"
  add_foreign_key "Stronghold", "Types", column: "typeID", primary_key: "typeID", name: "Stronghold_ibfk_1"
  add_foreign_key "Terrain", "Types", column: "typeID", primary_key: "typeID", name: "Terrain_ibfk_1"
  add_foreign_key "Winds", "Types", column: "typeID", primary_key: "typeID", name: "Winds_ibfk_1"
end

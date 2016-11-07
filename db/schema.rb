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

ActiveRecord::Schema.define(version: 20161107034633) do

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.string   "deck"
    t.string   "layoutset"
    t.string   "images"
    t.string   "textboxes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string   "backgroundimage"
    t.string   "backgroundcolour"
    t.integer  "maxcards"
    t.string   "name"
    t.string   "bordercolour"
    t.string   "borderthickness"
    t.string   "sets"
    t.string   "cards"
    t.integer  "cardsremaining"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "layoutsets", force: :cascade do |t|
    t.string   "name"
    t.string   "images"
    t.string   "textboxes"
    t.string   "cards"
    t.string   "deck"
    t.integer  "cardcollection"
    t.string   "foregroundcolour"
    t.string   "borderthickness"
    t.string   "bordercolour"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end

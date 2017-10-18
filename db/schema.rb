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

ActiveRecord::Schema.define(version: 20171017172353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "events", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
  end

  create_table "evidence_boards", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "position"
    t.string "label"
    t.uuid "event_id"
    t.index ["event_id"], name: "index_evidence_boards_on_event_id"
  end

  create_table "evidence_items", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "short_description"
    t.string "long_description"
    t.string "transcript"
    t.uuid "evidence_board_id"
    t.index ["evidence_board_id"], name: "index_evidence_items_on_evidence_board_id"
  end

  add_foreign_key "evidence_boards", "events"
  add_foreign_key "evidence_items", "evidence_boards"
end

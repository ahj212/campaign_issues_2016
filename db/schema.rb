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

ActiveRecord::Schema.define(version: 20150826031608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidate_issues", force: :cascade do |t|
    t.integer "candidate_id"
    t.integer "issue_id"
    t.text    "position",     default: [], array: true
    t.text    "source",       default: [], array: true
  end

  add_index "candidate_issues", ["candidate_id"], name: "index_candidate_issues_on_candidate_id", using: :btree
  add_index "candidate_issues", ["issue_id"], name: "index_candidate_issues_on_issue_id", using: :btree

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "political_affiliation"
    t.string "birth_date"
    t.string "experience"
    t.string "religion"
    t.string "home_state"
    t.string "total_raised"
    t.text   "summary"
    t.text   "img_url"
  end

  create_table "issues", force: :cascade do |t|
    t.string "topic"
  end

end

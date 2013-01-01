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

ActiveRecord::Schema.define(:version => 20121230181117) do

  create_table "authors", :force => true do |t|
    t.string  "name"
    t.integer "org_id"
  end

  add_index "authors", ["org_id"], :name => "index_authors_on_org_id"

  create_table "authors_reports", :force => true do |t|
    t.integer "author_id"
    t.integer "report_id"
  end

  add_index "authors_reports", ["author_id"], :name => "index_authors_reports_on_author_id"
  add_index "authors_reports", ["report_id"], :name => "index_authors_reports_on_report_id"

  create_table "orgs", :force => true do |t|
    t.string "name"
  end

  create_table "reports", :force => true do |t|
    t.string   "report_title"
    t.datetime "create_time"
    t.datetime "web_publish_time"
    t.string   "report_type"
    t.string   "report_url"
    t.string   "stock_code"
    t.string   "rating"
    t.float    "target_price"
    t.string   "source"
    t.datetime "scrape_time"
    t.float    "target_increase_lower"
    t.float    "target_increase_upper"
    t.string   "benchmark"
    t.float    "target_time_lower"
    t.float    "target_time_upper"
    t.integer  "org_id"
    t.float    "high"
    t.float    "low"
    t.float    "close"
    t.float    "right"
  end

  add_index "reports", ["org_id"], :name => "index_reports_on_org_id"

end

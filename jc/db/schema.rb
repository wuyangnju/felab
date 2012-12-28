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

ActiveRecord::Schema.define(:version => 20121215143315) do

  create_table "author_extras", :force => true do |t|
    t.integer "author_id"
    t.integer "report_correctness_count"
    t.integer "report_count"
    t.float   "report_correctness_ratio"
  end

  add_index "author_extras", ["author_id"], :name => "index_author_extras_on_author_id"

  create_table "authors", :force => true do |t|
    t.string  "name"
    t.integer "organization_id"
  end

  add_index "authors", ["organization_id"], :name => "index_authors_on_oranization_id"

  create_table "organization_extras", :force => true do |t|
    t.integer "organization_id"
    t.integer "report_correctness_count"
    t.integer "report_count"
    t.float   "report_correctness_ratio"
  end

  add_index "organization_extras", ["organization_id"], :name => "index_organization_extras_on_organization_id"

  create_table "organizations", :force => true do |t|
    t.string "name"
  end

  create_table "report_authors", :force => true do |t|
    t.integer "report_id"
    t.integer "author_id"
  end

  add_index "report_authors", ["author_id"], :name => "index_report_authors_on_author_id"
  add_index "report_authors", ["report_id"], :name => "index_report_authors_on_report_id"

  create_table "report_extras", :force => true do |t|
    t.float   "high"
    t.float   "low"
    t.float   "close"
    t.float   "right"
    t.integer "report_id"
  end

  add_index "report_extras", ["report_id"], :name => "index_report_extras_on_report_id"

  create_table "report_organizations", :force => true do |t|
    t.integer "report_id"
    t.integer "organization_id"
  end

  add_index "report_organizations", ["organization_id"], :name => "index_report_organizations_on_organization_id"
  add_index "report_organizations", ["report_id"], :name => "index_report_organizations_on_report_id"

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
  end

end

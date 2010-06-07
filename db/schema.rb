# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100605205625) do

  create_table "account_plans", :force => true do |t|
    t.string   "account_id"
    t.string   "name"
    t.string   "comments",   :default => "-"
    t.integer  "position",   :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_categories", :force => true do |t|
    t.string   "name",       :limit => 50,                  :null => false
    t.string   "comments",                 :default => "-"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_lines", :force => true do |t|
    t.string   "line_id",       :limit => 50,                   :null => false
    t.string   "line_caption",  :limit => 50,                   :null => false
    t.string   "comments",      :limit => 100, :default => "-"
    t.integer  "position",                     :default => 1
    t.string   "line_morphing", :limit => 50
    t.integer  "report_id",     :limit => 50,                   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "report_lines", ["report_id"], :name => "index_report_lines_on_report_id"

  create_table "reports", :force => true do |t|
    t.string   "reference",          :limit => 50,                   :null => false
    t.string   "name",               :limit => 50,                   :null => false
    t.integer  "report_category_id",                                 :null => false
    t.string   "comments",           :limit => 100, :default => "-"
    t.integer  "position",                          :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["report_category_id"], :name => "index_reports_on_report_category_id"

  create_table "structures", :force => true do |t|
    t.integer  "report_line_id"
    t.integer  "account_plan_id"
    t.string   "comments",        :limit => 100, :default => "-"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "structures", ["account_plan_id"], :name => "index_structures_on_account_plan_id"
  add_index "structures", ["report_line_id"], :name => "index_structures_on_report_line_id"

end

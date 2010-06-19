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

ActiveRecord::Schema.define(:version => 201006221234568) do

  create_table "TABLE 9", :id => false, :force => true do |t|
    t.string "COL 1", :limit => 98
  end

  create_table "account_plans", :force => true do |t|
    t.string   "account_id"
    t.string   "name"
    t.string   "comments",   :default => "-"
    t.integer  "position",   :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "tasklist_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["tasklist_id"], :name => "index_comments_on_tasklist_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "menus", :force => true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.text     "description"
    t.string   "htmllink"
    t.string   "target"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["parent_id"], :name => "index_menus_on_parent_id"

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_categories", :force => true do |t|
    t.string   "report_category_id",        :limit => 50,                   :null => false
    t.string   "category_type",             :limit => 50,                   :null => false
    t.string   "category_type_description", :limit => 50,                   :null => false
    t.string   "category_kind",             :limit => 50,                   :null => false
    t.string   "name",                      :limit => 50,                   :null => false
    t.string   "comments",                                :default => "-"
    t.string   "created_by",                :limit => 50, :default => "-"
    t.string   "updated_by",                :limit => 50, :default => "-"
    t.string   "updated_with",              :limit => 50, :default => "-"
    t.boolean  "record_validity",                         :default => true
    t.boolean  "record_visibility",                       :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_lines", :force => true do |t|
    t.integer  "report_id",                                          :null => false
    t.string   "line_id",           :limit => 50,                    :null => false
    t.string   "parent_line_id",    :limit => 50
    t.string   "line_caption",      :limit => 50,                    :null => false
    t.string   "uo",                :limit => 1,   :default => "+"
    t.string   "comments",          :limit => 100, :default => "-"
    t.integer  "position",                         :default => 1
    t.string   "line_morphing",     :limit => 50
    t.string   "line_style",        :limit => 50
    t.string   "created_by",        :limit => 50,  :default => "-"
    t.string   "updated_by",        :limit => 50,  :default => "-"
    t.string   "updated_with",      :limit => 50,  :default => "-"
    t.boolean  "record_validity",                  :default => true
    t.boolean  "record_visibility",                :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "report_lines", ["report_id"], :name => "index_report_lines_on_report_id"

  create_table "reports", :force => true do |t|
    t.string   "reference",          :limit => 50,                    :null => false
    t.string   "name",               :limit => 50,                    :null => false
    t.integer  "report_category_id",                                  :null => false
    t.string   "comments",           :limit => 100, :default => "-"
    t.integer  "position",                          :default => 1
    t.string   "created_by",         :limit => 50,  :default => "-"
    t.string   "updated_by",         :limit => 50,  :default => "-"
    t.string   "updated_with",       :limit => 50,  :default => "-"
    t.boolean  "record_validity",                   :default => true
    t.boolean  "record_visibility",                 :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["report_category_id"], :name => "index_reports_on_report_category_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "structures", :force => true do |t|
    t.integer  "report_line_id"
    t.integer  "account_plan_id"
    t.string   "comments",        :limit => 100, :default => "-"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "structures", ["account_plan_id"], :name => "index_structures_on_account_plan_id"
  add_index "structures", ["report_line_id"], :name => "index_structures_on_report_line_id"

  create_table "tasklists", :force => true do |t|
    t.string   "name"
    t.string   "scope"
    t.string   "genre"
    t.integer  "project_id"
    t.integer  "user_id"
    t.text     "description"
    t.string   "priority"
    t.date     "due_date"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasklists", ["project_id"], :name => "index_tasklists_on_project_id"
  add_index "tasklists", ["user_id"], :name => "index_tasklists_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "shortname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login",               :null => false
    t.string   "email",               :null => false
    t.string   "crypted_password",    :null => false
    t.string   "password_salt",       :null => false
    t.string   "persistence_token",   :null => false
    t.string   "single_access_token", :null => false
    t.string   "perishable_token",    :null => false
    t.integer  "login_count",         :null => false
    t.integer  "failed_login_count",  :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
  end

end

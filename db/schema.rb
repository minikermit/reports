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

  create_table "account_plans", :force => true do |t|
    t.integer  "account_type_id"
    t.string   "account_id"
    t.string   "shortname"
    t.string   "name"
    t.integer  "position",          :default => 1
    t.string   "account_parent_id"
    t.integer  "parent_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "group_id"
    t.string   "entity_id"
    t.string   "uo"
    t.string   "comments",          :default => "-"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "client_security_positions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commands", :force => true do |t|
    t.string   "execute"
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

  create_table "currencies", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dim_dates", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fdbtabs", :force => true do |t|
    t.string   "TBID",                 :limit => 3,  :null => false
    t.string   "TBCODE",               :limit => 14, :null => false
    t.string   "TBETAT",               :limit => 1,  :null => false
    t.string   "TBDTOU",               :limit => 6,  :null => false
    t.string   "TBDTMU",               :limit => 6,  :null => false
    t.string   "TBOPRN",               :limit => 7,  :null => false
    t.string   "TBDES1",               :limit => 35, :null => false
    t.string   "TBDES2",               :limit => 35, :null => false
    t.string   "TBDES3",               :limit => 35, :null => false
    t.string   "TBDES4",               :limit => 35, :null => false
    t.string   "TBCOMP",               :limit => 73, :null => false
    t.integer  "TBNBRM"
    t.string   "fimis_status",         :limit => 1
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
  end

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

  create_table "packages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "par_mappings", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portals", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "position_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scenarios", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "sources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "timebands", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "validationrules", :force => true do |t|
    t.string   "rule_identification", :limit => 20,   :null => false
    t.string   "rule_description",    :limit => 200,  :null => false
    t.string   "rule_scope",          :limit => 15,   :null => false
    t.string   "rule_hint",           :limit => 500
    t.string   "rule_sql_query",      :limit => 1000
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at"
    t.string   "rule_type",           :limit => 20,   :null => false
  end

end

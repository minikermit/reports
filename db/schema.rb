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

ActiveRecord::Schema.define(:version => 20100527213814) do

  create_table "account_plans", :force => true do |t|
    t.string   "account_id"
    t.string   "name"
    t.string   "comments"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_categories", :force => true do |t|
    t.string   "name"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_lines", :force => true do |t|
    t.string   "line_id"
    t.string   "line_caption"
    t.string   "comments"
    t.integer  "order"
    t.string   "line_morphing"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_lines_account_plans", :id => false, :force => true do |t|
    t.integer "report_line_id"
    t.integer "account_plan_id"
  end

  create_table "reports", :force => true do |t|
    t.string   "reference"
    t.string   "name"
    t.integer  "report_category_id"
    t.string   "comments"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "structures", :force => true do |t|
    t.integer  "report_line_id"
    t.integer  "account_plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

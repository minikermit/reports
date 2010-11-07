class CreateValidationrules < ActiveRecord::Migration
  def self.up
    create_table :validationrules do |t|
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

  def self.down
    drop_table :validationrules
  end
end

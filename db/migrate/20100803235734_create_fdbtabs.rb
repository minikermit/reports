class CreateFdbtabs < ActiveRecord::Migration
  def self.up
  create_table :fdbtabs do |t|
    t.string   "TBID",                 :limit => 3,                                 :null => false
    t.string   "TBCODE",               :limit => 14,                                :null => false
    t.string   "TBETAT",               :limit => 1,                                 :null => false
    t.string   "TBDTOU",               :limit => 6,                                 :null => false
    t.string   "TBDTMU",               :limit => 6,                                 :null => false
    t.string   "TBOPRN",               :limit => 7,                                 :null => false
    t.string   "TBDES1",               :limit => 35,                                :null => false
    t.string   "TBDES2",               :limit => 35,                                :null => false
    t.string   "TBDES3",               :limit => 35,                                :null => false
    t.string   "TBDES4",               :limit => 35,                                :null => false
    t.string   "TBCOMP",               :limit => 73,                                :null => false
    t.integer  "TBNBRM",               :limit => nil, :precision => 6, :scale => 0
    t.string   "fimis_status",         :limit => 1
    t.string   "Group_Identifier",     :limit => 50
    t.string   "Entity_Identifier",    :limit => 50
    t.string   "Source_Identifier",    :limit => 50
    t.datetime "Record_Creation_Date"
    t.string   "Source_Package",       :limit => 50
    end
  end

  def self.down
    drop_table :fdbtabs
  end
end

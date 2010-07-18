class CreateB2TAMappings < ActiveRecord::Migration
  def self.up
    create_table :b2_ta_mappings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :b2_ta_mappings
  end
end

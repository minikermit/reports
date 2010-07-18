class CreateParMappings < ActiveRecord::Migration
  def self.up
    create_table :par_mappings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :par_mappings
  end
end

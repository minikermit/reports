class CreatePositionTypes < ActiveRecord::Migration
  def self.up
    create_table :position_types do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :position_types
  end
end

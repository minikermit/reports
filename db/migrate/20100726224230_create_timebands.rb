class CreateTimebands < ActiveRecord::Migration
  def self.up
    create_table :timebands do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :timebands
  end
end

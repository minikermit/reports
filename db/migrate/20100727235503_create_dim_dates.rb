class CreateDimDates < ActiveRecord::Migration
  def self.up
    create_table :dim_dates do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :dim_dates
  end
end

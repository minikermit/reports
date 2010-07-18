class CreateClientSecurityPositions < ActiveRecord::Migration
  def self.up
    create_table :client_security_positions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :client_security_positions
  end
end

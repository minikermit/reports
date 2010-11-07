class CreateActivityLogs < ActiveRecord::Migration
  def self.up
    create_table :activity_logs do |t|
      t.string :session_id
      t.integer :user_id
      t.string :browser
      t.string :ip_address
      t.string :controller
      t.string :action
      t.datetime :request_at

      t.timestamps
    end
  end

  def self.down
    drop_table :activity_logs
  end
end

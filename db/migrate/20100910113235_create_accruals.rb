class CreateAccruals < ActiveRecord::Migration
  def self.up
    create_table :accruals do |t|
      t.integer :type_id
      t.string :name	
      t.string :currency
      t.decimal :amount
      t.date :event_date
      t.integer :period_id
      t.string :debit_account
      t.string :credit_account
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :accruals
  end
end

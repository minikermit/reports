class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.integer :identification
      t.string :counterparty
      t.string :account
      t.string :name
      t.date :booked_on
      t.date :period_from
      t.date :period_to
      t.integer :validity_in_months
      t.string :currency
      t.decimal :amount
      t.string :balance_sheet_accrual_account
      t.string :profit_and_loss_accrual_account
      t.integer :type_id
      t.integer :user_id
      t.integer :updated_by

      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end

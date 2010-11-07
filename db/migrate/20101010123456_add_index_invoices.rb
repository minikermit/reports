class AddIndexInvoices < ActiveRecord::Migration
  def self.up
    add_index :invoices, :user_id #, :unique => true
    add_index :invoices, :type_id
  end

  def self.down
    remove_index  :invoices, :user_id
    remove_index  :invoices, :type_id
  end
end

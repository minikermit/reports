class Invoice < ActiveRecord::Base

  belongs_to :user

  validates_numericality_of :amount
  validates_format_of :counterparty, :with => /[0-9]{7}\z/,
                      :message => '- You have to enter the account number in the correct Olympic format 1234567 (7 digits)'

                       
  validates_format_of :balance_sheet_accrual_account, :profit_and_loss_accrual_account,
                      :with => /[0-9]{7}\/[0-9]{3}.[0-9]{3}.[0-9]{3}\z/,
                      :message => '- You have to enter the account number in the correct Olympic format 1234567/123.123.123'
  
  # creates hash for nice names in view
  TYPE_NAMES = {     1 => 'Invoice to be accrued',
                     2 => 'Invoice to be depreciated',
                     3 => 'Invoice direct to P&L',
                     4 => 'Other'}

  def type_name
    TYPE_NAMES[self.type_id]
  end

  # moves hash to an array for select box
  def self.type_id_name_options
    TYPE_NAMES.to_a.sort
  end

end

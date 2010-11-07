class Accrual < ActiveRecord::Base

  validates_numericality_of :amount
  validates_format_of :debit_account, :credit_account,
                      :with => /[0-9]{7}\/[0-9]{3}.[0-9]{3}.[0-9]{3}\z/,
                      :message => '- You have to enter the account number in the correct Olympic format 1234567/123.123.123'

  # validates_length_of :period_id, :is => 6


  # creates hash for nice names in view
  TYPE_NAMES = { 1 => 'Activation of invoice -',
                     2 => 'Depreciation of assets +',
                     3 => 'Correction of depreciation',
                     4 => 'Other'}

  def type_name
    TYPE_NAMES[self.type_id]
  end

  # moves hash to an array for select box
  def self.type_id_name_options
    TYPE_NAMES.to_a.sort
  end
  
end

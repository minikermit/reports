class Accrual < ActiveRecord::Base

  validates_numericality_of :amount
  validates_length_of :period_id, :is => 6



  # creates hash for nice names in view
  TYPE_NAMES = { 1 => 'Accruals against invoice +',
                     2 => 'Accruals against budget -',
                     3 => 'Dissolution of accruals +',
                     4 => 'Building of reserves -',
                     5 => 'Other'}

  def type_name
    TYPE_NAMES[self.type_id]
  end

  # moves hash to an array for select box
  def self.type_id_name_options
    TYPE_NAMES.to_a.sort
  end
  
end

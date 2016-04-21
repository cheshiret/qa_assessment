class Dvd < ActiveRecord::Base
  has_many :order

  before_destroy :ensure_not_referenced_by_any_active_order

  def ensure_not_referenced_by_any_active_order
    if order.empty?
      return true
    else
      errors.add(:base, 'There are active associated orders')
      return false
    end
  end
end

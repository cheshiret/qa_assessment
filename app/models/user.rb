class User < ActiveRecord::Base
  belongs_to :membership, :class => "Memberships", :foreign_key => 'memid'
  has_many :cards,:foreign_key => 'userid'
  has_many :orders, :foreign_key => 'userid', :dependent => :destroy

  # before_destroy :ensure_not_referenced_by_any_active_order
  #
  # def ensure_not_referenced_by_any_active_order
  #   if order.empty?
  #     return true
  #   else
  #     errors.add(:base, 'There are active associated orders')
  #     return false
  #   end
  # end
end

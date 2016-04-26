class Membership < ActiveRecord::Base
  has_many :users, :foreign_key => 'memid'
  before_destroy :ensure_not_referenced_by_any_user

  def ensure_not_referenced_by_any_user
    if users.empty?
      return true
    else
      errors.add(:base, 'There are active associated user')
      return false
    end
  end
end

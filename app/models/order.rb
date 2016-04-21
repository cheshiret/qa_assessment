class Order < ActiveRecord::Base
  belongs_to :users
  belongs_to :dvds
  has_many :order_itmes

  def total_price
    order_items.to_a.sum(&:price)
  end
end

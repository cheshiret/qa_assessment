class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :dvd
  has_many :order_itmes

  def total_price
    order_itmes.to_a.sum(&:price)
  end
end

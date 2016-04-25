class Order < ActiveRecord::Base
  validates :total, presence: true
  belongs_to :users, foreign_key: :userid
  belongs_to :dvds, foreign_key: :dvdid
  has_many :order_itmes, :dependent => :destroy

  def self.search(query)
    where("orders.ordid = ? ",  query)
  end

  def self.by_id(ordid)
    where("ordid = ?", ordid)
  end

  def self.by_user_id(userid)
    where("userid = ?", userid)
  end

  def total_price
    order_items.to_a.sum(&:price)
  end
  def self.with_current_status()
    joins(order_itmes: :status)
        .order('ordid DESC, order_items.created_at DESC')
        .where('order_items.ordid IN (SELECT MAX(ordid) FROM order_items GROUP BY ordid)')
        .select("orders.*, order_items.status, order_items.created_at")
  end
end

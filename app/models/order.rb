class Order < ActiveRecord::Base
  validates :total, presence: true
  belongs_to :user, foreign_key: :userid
  belongs_to :dvd, foreign_key: :dvdid
  has_many :order_items, :dependent => :destroy

  def self.search(query)
    where("orders.ordid = ? ",  query)
  end

  def self.by_id(ordid)
    where("ordid = ?", ordid)
  end

  def self.by_user_id(userid)
    where("userid = ?", userid)
  end

  # def total_price
  #   order_items.to_a.sum(&:price)
  # end
  def self.with_current_status()
    joins("LEFT JOIN order_items ON order_items.ordnum = orders.ordnum" )
        .order('ordid DESC, order_items.created_at DESC')
        .where('order_items.ordnum IN (SELECT MAX(ordnum) FROM order_items GROUP BY ordnum)')
        .select("orders.*, order_items.status, order_items.created_at")
  end
end

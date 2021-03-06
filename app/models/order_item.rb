class OrderItem < ActiveRecord::Base
  belongs_to :orders, :foreign_key => 'ordnum'

  def self.by_order_num(order_num)
    where("ordnum = ?", order_num)
  end

  def self.process_order_items(order, order_item_params)
    order_item_params.each do |order_item_param|
      if OrderItem.exists?(:dvdid => order_item_param["dvdid"])
        OrderItem.where("ordnum = ?", order.ordnum)
            .where("dvdid = ?", order_item_param["dvdid"])
            .update_all(:status => order_item_param["status"])
      elsif
      order_item_param["ordnum"] = order.ordnum
        @order_item = OrderItem.create(order_item_param)
        dvdid = @order_item.dvdid
      end
    end
    @order_items = OrderItem.by_order_num(order.ordnum)
    @order_items.each do |order_item|
      dvdid = order_item.dvdid.to_s
      if order_item_params.any? { |item| item['dvdid'].include?(dvdid) } == false
        OrderItem.where(:dvdid => dvdid).destroy_all
      end
    end
  end

  # def set_item_as_available
  #   order_items = order.order_items
  #   order_items.each do |order_item|
  #     .update(order_item.dvdid, :status => 1)
  #   end
  # end
end
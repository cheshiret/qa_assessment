class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :orditemid
      t.string :ordnum
      t.string :userid, :null => false, :references => [:users, :userid]
      t.string :dvdid, :null => false, :references => [:dvds, :dvdid]
      t.integer :status
      t.integer :days
      t.decimal :price
      t.datetime :rentaldate
      t.datetime :returndate

      t.timestamps
    end
  end
end

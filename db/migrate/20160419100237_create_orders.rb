class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :ordid
      t.string :ordnum
      t.string :userid, :null => false, :references => [:users, :userid]
      t.integer :status
      t.integer :ordertype

      t.timestamps
    end


  end
end

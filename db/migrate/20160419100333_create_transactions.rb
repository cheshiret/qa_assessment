class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transid
      t.string :userid,:null => false, :references => [:users, :userid]
      t.string :rcptnum
      t.string :ordnum,:null => false, :references => [:orders, :ordnum]
      t.string :rcptnum
      t.integer :status
      t.integer :transtype
      t.decimal :amount
      t.datetime :transdate
      t.string :paymethod
      t.string :cardid,:null => false, :references => [:cards, :cardid]


      t.timestamps
    end
  end
end

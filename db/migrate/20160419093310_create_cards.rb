class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :cardid
      t.string :userid,:null => false, :references => [:users, :userid]
      t.integer :status
      t.string :cardnum
      t.string :pw
      t.decimal :balance

      t.timestamps
    end
  end
end

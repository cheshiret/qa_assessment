class AddTotalToOrder < ActiveRecord::Migration
  def down
    remove_column :orders, :tatol, :decimal

  end

  def up
    add_column :orders, :total, :decimal
  end

  def change
    add_column :orders, :total, :decimal
  end

end

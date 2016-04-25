class AddTotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :tatol, :decimal
  end
end

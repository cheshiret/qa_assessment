class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :dvdid
      t.string :dvdname
      t.integer :status
      t.integer :dvdtype
      t.decimal :price

      t.timestamps
    end
  end

  create_table :order_dvds, :id => false do |t|
    t.references :orders, :dvds
    t.integer :status
  end
  add_index :order_dvds, [:ordid, :dvdid]
end

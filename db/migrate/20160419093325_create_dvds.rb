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

end

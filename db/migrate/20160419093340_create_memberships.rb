class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :memid
      t.string :memname
      t.integer :status
      t.integer :validmonths
      t.integer :cost
      t.integer :freetrans
      t.decimal :costadd

      t.timestamps
    end
  end
end

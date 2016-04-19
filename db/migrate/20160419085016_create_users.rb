class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userid
      t.string :username
      t.integer :status
      t.string :memid,:null => false, :references => [:memberships, :memid]
      t.datetime :regdate
      t.datetime :expiredate

      t.timestamps
    end


    create_table :user_mems, :id => false do |t|
      t.references :users, :memberships
      t.integer :status
    end

    create_table :user_dvds, :id => false do |t|
      t.references :users, :dvds
      t.integer :status
      t.datetime :rentaldate
      t.datetime :returndate
    end


    add_index :user_mems, [:userid, :memid]
    add_index :user_dvds, [:userid, :dvdid]
  end
end

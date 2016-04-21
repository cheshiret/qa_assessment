class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userid
      t.string :username
      t.integer :status
      t.string :memid
      t.datetime :regdate
      t.datetime :expiredate

      t.timestamps
    end

  end


end

class AddMembershipRefToUser < ActiveRecord::Migration
  def change
    add_index :users, :userid
    add_index :users, :memid
  end

end

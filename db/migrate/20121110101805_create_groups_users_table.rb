class CreateGroupsUsersTable < ActiveRecord::Migration
  def change
    create_table :groups_users do |t|
      t.references :user
      t.references :group
    end
  add_index :groups_users,[:user_id,:group_id]
  add_index :groups_users,[:group_id,:user_id]
  end
end

class CreateApplyGroups < ActiveRecord::Migration
  def change
    create_table :apply_groups do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :owner_id
      t.integer :status

      t.timestamps
    end
  end
end

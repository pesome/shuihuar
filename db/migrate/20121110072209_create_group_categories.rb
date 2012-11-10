class CreateGroupCategories < ActiveRecord::Migration
  def change
    create_table :group_categories do |t|
      t.integer :group_id
      t.integer :category_id
    end
    add_index :group_categories,[:group_id,:category_id]
    add_index :group_categories,[:category_id,:group_id]
  end
end

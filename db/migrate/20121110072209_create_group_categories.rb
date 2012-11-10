class CreateGroupCategories < ActiveRecord::Migration
  def change
    create_table :group_categories do |t|
      t.integer :group_id
      t.integer :category_id

      t.timestamps
    end
  end
end

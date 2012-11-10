class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.string :label
      t.string :image_url
      t.integer :owner
      t.boolean :is_public

      t.timestamps
    end
  end
end

class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.integer :max_person
      t.string :description

      t.timestamps
    end
  end
end

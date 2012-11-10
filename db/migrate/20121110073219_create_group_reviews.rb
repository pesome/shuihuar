class CreateGroupReviews < ActiveRecord::Migration
  def change
    create_table :group_reviews do |t|
      t.integer :group_id
      t.text :context
      t.timestamp :add_time

      t.timestamps
    end
  end
end

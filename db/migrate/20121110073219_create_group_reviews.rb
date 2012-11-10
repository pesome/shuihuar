class CreateGroupReviews < ActiveRecord::Migration
  def change
    create_table :group_reviews do |t|
      t.references :group_id
      t.text :context

      t.timestamps
    end
  end
end

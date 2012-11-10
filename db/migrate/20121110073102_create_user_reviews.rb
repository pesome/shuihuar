class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|
      t.integer :user_id
      t.text :context
      t.timestamp :add_time

      t.timestamps
    end
  end
end

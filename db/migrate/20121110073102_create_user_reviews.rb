class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|
      t.references :user_id
      t.text :context

      t.timestamps
    end
  end
end

class CreateTaskReviews < ActiveRecord::Migration
  def change
    create_table :task_reviews do |t|
      t.integer :task_id
      t.text :context
      t.timestamp :add_time

      t.timestamps
    end
  end
end

class CreateTaskReviews < ActiveRecord::Migration
  def change
    create_table :task_reviews do |t|
      t.references :task_id
      t.text :context

      t.timestamps
    end
  end
end

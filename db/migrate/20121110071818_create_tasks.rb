class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datatime :expect_begin_time
      t.datatime :expect_end_time
      t.datatime :begin_time
      t.datatime :end_time
      t.integer :owner
      t.text :description
      t.integer :status
      t.integer :assign_user

      t.timestamps
    end
  end
end

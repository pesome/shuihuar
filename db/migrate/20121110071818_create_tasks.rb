class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :expect_begin_time
      t.datetime :expect_end_time
      t.datetime :begin_time
      t.datetime :end_time
      t.integer :owner
      t.text :description
      t.integer :status
      t.integer :assign_user

      t.timestamps
    end
  end
end

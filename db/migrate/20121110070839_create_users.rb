class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :QQ
      t.string :weibo
      t.string :phone
      t.integer :gender
      t.string :company
      t.string :label
      t.string :city
      t.string :destrict
      t.string :icon_url
      t.string :position
      t.text :description

      t.timestamps
    end
  end
end

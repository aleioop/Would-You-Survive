class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fbid
      t.string :name
      t.string :email
      t.string :image
      t.date :birthday
      t.string :gender
      t.float :weight
      t.float :height

      t.timestamps
    end
  end
end

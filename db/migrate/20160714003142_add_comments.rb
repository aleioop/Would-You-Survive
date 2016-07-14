class AddComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :result
      t.string :body
      t.integer :vote
    end
  end
end

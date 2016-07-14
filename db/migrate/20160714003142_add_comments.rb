class AddComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :era
      t.belongs_to :reason
      t.string :body
    end
  end
end

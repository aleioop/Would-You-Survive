class AddDyingReasons < ActiveRecord::Migration
  def change
    create_table :dying_reasons do |t|
      t.belongs_to :era
      t.string :body

      t.timestamps
    end
  end
end

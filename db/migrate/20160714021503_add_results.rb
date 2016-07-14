class AddResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :era
      t.string :body

      t.timestamps
    end
  end
end

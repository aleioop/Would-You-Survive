class AddResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :era
      t.string :body
      t.boolean :is_dead

      t.timestamps
    end
  end
end

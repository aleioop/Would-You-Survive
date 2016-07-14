class AddEras < ActiveRecord::Migration
  def change
    create_table :eras do |t|
      t.string :name
      t.string :pic_url
      t.string :description

      t.timestamps
    end
  end
end

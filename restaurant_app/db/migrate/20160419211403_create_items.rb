class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :cuisine
      t.integer :price, null: false
      t.timestamps null: false
    end
  end
end

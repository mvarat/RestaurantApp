class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :reservation_id
      t.integer :item_id
      t.text :notes
      t.timestamps null: false
    end
  end
end

class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :num_of_guests, null: false
      t.integer :table_num, null: false
      t.boolean :is_paid, :default => false
      t.integer :server_id
      t.timestamps null: false
    end
  end
end
